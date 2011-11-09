require 'test_helper'

class ProfessorsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Professor.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Professor.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Professor.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to professor_url(assigns(:professor))
  end

  def test_edit
    get :edit, :id => Professor.first
    assert_template 'edit'
  end

  def test_update_invalid
    Professor.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Professor.first
    assert_template 'edit'
  end

  def test_update_valid
    Professor.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Professor.first
    assert_redirected_to professor_url(assigns(:professor))
  end

  def test_destroy
    professor = Professor.first
    delete :destroy, :id => professor
    assert_redirected_to professors_url
    assert !Professor.exists?(professor.id)
  end
end
