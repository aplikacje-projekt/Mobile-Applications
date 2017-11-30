require 'test_helper'

class RefuellingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @refuelling = refuellings(:one)
  end

  test "should get index" do
    get refuellings_url
    assert_response :success
  end

  test "should get new" do
    get new_refuelling_url
    assert_response :success
  end

  test "should create refuelling" do
    assert_difference('Refuelling.count') do
      post refuellings_url, params: { refuelling: { car_id: @refuelling.car_id, date_time: @refuelling.date_time, description: @refuelling.description, liters: @refuelling.liters, mileage: @refuelling.mileage, perol_station_id: @refuelling.perol_station_id, total_price: @refuelling.total_price } }
    end

    assert_redirected_to refuelling_url(Refuelling.last)
  end

  test "should show refuelling" do
    get refuelling_url(@refuelling)
    assert_response :success
  end

  test "should get edit" do
    get edit_refuelling_url(@refuelling)
    assert_response :success
  end

  test "should update refuelling" do
    patch refuelling_url(@refuelling), params: { refuelling: { car_id: @refuelling.car_id, date_time: @refuelling.date_time, description: @refuelling.description, liters: @refuelling.liters, mileage: @refuelling.mileage, perol_station_id: @refuelling.perol_station_id, total_price: @refuelling.total_price } }
    assert_redirected_to refuelling_url(@refuelling)
  end

  test "should destroy refuelling" do
    assert_difference('Refuelling.count', -1) do
      delete refuelling_url(@refuelling)
    end

    assert_redirected_to refuellings_url
  end
end
