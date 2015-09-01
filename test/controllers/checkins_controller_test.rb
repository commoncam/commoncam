require 'test_helper'

class CheckinsControllerTest < ActionController::TestCase
  setup do
    @checkin = checkins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checkins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checkin" do
    assert_difference('Checkin.count') do
      post :create, checkin: { camera_id: @checkin.camera_id, comments: @checkin.comments, created_at: @checkin.created_at, user_id: @checkin.user_id, exposure: @checkin.exposure, is_user_editable: @checkin.is_user_editable, location_id: @checkin.location_id, story: @checkin.story, summary: @checkin.summary, updated_at: @checkin.updated_at, updated_by: @checkin.updated_by, updated_count: @checkin.updated_count }
    end

    assert_redirected_to checkin_path(assigns(:checkin))
  end

  test "should show checkin" do
    get :show, id: @checkin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @checkin
    assert_response :success
  end

  test "should update checkin" do
    patch :update, id: @checkin, checkin: { camera_id: @checkin.camera_id, comments: @checkin.comments, created_at: @checkin.created_at, user_id: @checkin.user_id, exposure: @checkin.exposure, is_user_editable: @checkin.is_user_editable, location_id: @checkin.location_id, story: @checkin.story, summary: @checkin.summary, updated_at: @checkin.updated_at, updated_by: @checkin.updated_by, updated_count: @checkin.updated_count }
    assert_redirected_to checkin_path(assigns(:checkin))
  end

  test "should destroy checkin" do
    assert_difference('Checkin.count', -1) do
      delete :destroy, id: @checkin
    end

    assert_redirected_to checkins_path
  end
end
