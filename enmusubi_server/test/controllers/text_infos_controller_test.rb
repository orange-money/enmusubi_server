require 'test_helper'

class TextInfosControllerTest < ActionController::TestCase
  setup do
    @text_info = text_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text_info" do
    assert_difference('TextInfo.count') do
      post :create, text_info: { comment: @text_info.comment, image: @text_info.image, lecture_name: @text_info.lecture_name, price: @text_info.price, status: @text_info.status, textbook_name: @text_info.textbook_name, user_id: @text_info.user_id }
    end

    assert_redirected_to text_info_path(assigns(:text_info))
  end

  test "should show text_info" do
    get :show, id: @text_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @text_info
    assert_response :success
  end

  test "should update text_info" do
    patch :update, id: @text_info, text_info: { comment: @text_info.comment, image: @text_info.image, lecture_name: @text_info.lecture_name, price: @text_info.price, status: @text_info.status, textbook_name: @text_info.textbook_name, user_id: @text_info.user_id }
    assert_redirected_to text_info_path(assigns(:text_info))
  end

  test "should destroy text_info" do
    assert_difference('TextInfo.count', -1) do
      delete :destroy, id: @text_info
    end

    assert_redirected_to text_infos_path
  end
end
