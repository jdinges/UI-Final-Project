require 'test_helper'

class AccomplishmentsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Accomplishment.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Accomplishment.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Accomplishment.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to accomplishment_url(assigns(:accomplishment))
  end

  def test_edit
    get :edit, :id => Accomplishment.first
    assert_template 'edit'
  end

  def test_update_invalid
    Accomplishment.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Accomplishment.first
    assert_template 'edit'
  end

  def test_update_valid
    Accomplishment.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Accomplishment.first
    assert_redirected_to accomplishment_url(assigns(:accomplishment))
  end

  def test_destroy
    accomplishment = Accomplishment.first
    delete :destroy, :id => accomplishment
    assert_redirected_to accomplishments_url
    assert !Accomplishment.exists?(accomplishment.id)
  end
end
