require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  setup do
    @location = locations(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post :create, location: {
        city: @location.city,
        country: @location.country,
        created_at: @location.created_at,
        is_user_editable: @location.is_user_editable,
        lat: @location.lat,
        lng: @location.lng,
        name: @location.name,
        state: @location.state,
        street: @location.street,
        updated_at: @location.updated_at,
        updated_by: @location.updated_by,
        updated_count: @location.updated_count,
        zip: @location.zip
      }
    end

    assert_redirected_to location_path(assigns(:location))
  end

  test "should show location" do
    get :show, id: @location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location
    assert_response :success
  end

  test "should update location" do
    patch :update, id: @location, location: {
      city: @location.city,
      country: @location.country,
      created_at: @location.created_at,
      is_user_editable: @location.is_user_editable,
      lat: @location.lat,
      lng: @location.lng,
      name: @location.name,
      state: @location.state,
      street: @location.street,
      updated_at: @location.updated_at,
      updated_by: @location.updated_by,
      updated_count: @location.updated_count,
      zip: @location.zip
    }
    assert_redirected_to location_path(assigns(:location))
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete :destroy, id: @location
    end

    assert_redirected_to locations_path
  end
end
