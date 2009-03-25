require 'test_helper'

class UnvotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unvotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unvote" do
    assert_difference('Unvote.count') do
      post :create, :unvote => { }
    end

    assert_redirected_to unvote_path(assigns(:unvote))
  end

  test "should show unvote" do
    get :show, :id => unvotes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => unvotes(:one).to_param
    assert_response :success
  end

  test "should update unvote" do
    put :update, :id => unvotes(:one).to_param, :unvote => { }
    assert_redirected_to unvote_path(assigns(:unvote))
  end

  test "should destroy unvote" do
    assert_difference('Unvote.count', -1) do
      delete :destroy, :id => unvotes(:one).to_param
    end

    assert_redirected_to unvotes_path
  end
end
