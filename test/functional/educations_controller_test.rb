require 'test_helper'

class EducationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Education.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Education.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Education.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to education_url(assigns(:education))
  end

  def test_edit
    get :edit, :id => Education.first
    assert_template 'edit'
  end

  def test_update_invalid
    Education.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Education.first
    assert_template 'edit'
  end

  def test_update_valid
    Education.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Education.first
    assert_redirected_to education_url(assigns(:education))
  end

  def test_destroy
    education = Education.first
    delete :destroy, :id => education
    assert_redirected_to educations_url
    assert !Education.exists?(education.id)
  end
end
