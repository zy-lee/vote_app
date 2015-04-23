require 'test_helper'

class VotePicsControllerTest < ActionController::TestCase
  setup do
    @vote_pic = vote_pics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vote_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote_pic" do
    assert_difference('VotePic.count') do
      post :create, vote_pic: { src: @vote_pic.src }
    end

    assert_redirected_to vote_pic_path(assigns(:vote_pic))
  end

  test "should show vote_pic" do
    get :show, id: @vote_pic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vote_pic
    assert_response :success
  end

  test "should update vote_pic" do
    patch :update, id: @vote_pic, vote_pic: { src: @vote_pic.src }
    assert_redirected_to vote_pic_path(assigns(:vote_pic))
  end

  test "should destroy vote_pic" do
    assert_difference('VotePic.count', -1) do
      delete :destroy, id: @vote_pic
    end

    assert_redirected_to vote_pics_path
  end
end
