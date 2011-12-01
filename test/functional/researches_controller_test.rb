require 'test_helper'

class ResearchesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Research.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Research.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Research.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to research_url(assigns(:research))
  end

  def test_edit
    get :edit, :id => Research.first
    assert_template 'edit'
  end

  def test_update_invalid
    Research.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Research.first
    assert_template 'edit'
  end

  def test_update_valid
    Research.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Research.first
    assert_redirected_to research_url(assigns(:research))
  end

  def test_destroy
    research = Research.first
    delete :destroy, :id => research
    assert_redirected_to researches_url
    assert !Research.exists?(research.id)
  end
end
