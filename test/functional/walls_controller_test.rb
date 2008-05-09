require File.dirname(__FILE__) + '/../test_helper'

class WallsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:walls)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_wall
    assert_difference('Wall.count') do
      post :create, :wall => { }
    end

    assert_redirected_to wall_path(assigns(:wall))
  end

  def test_should_show_wall
    get :show, :id => walls(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => walls(:one).id
    assert_response :success
  end

  def test_should_update_wall
    put :update, :id => walls(:one).id, :wall => { }
    assert_redirected_to wall_path(assigns(:wall))
  end

  def test_should_destroy_wall
    assert_difference('Wall.count', -1) do
      delete :destroy, :id => walls(:one).id
    end

    assert_redirected_to walls_path
  end
end
