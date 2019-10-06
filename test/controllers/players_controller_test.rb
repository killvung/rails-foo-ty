require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get players_all_url
    assert_response :success
  end

  test "should get one" do
    get players_one_url
    assert_response :success
  end

end
