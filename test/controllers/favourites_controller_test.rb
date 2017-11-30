require 'test_helper'

class FavouritesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get favourites_new_url
    assert_response :success
  end

end
