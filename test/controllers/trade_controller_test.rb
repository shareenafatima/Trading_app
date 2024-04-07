require "test_helper"

class TradeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trade_index_url
    assert_response :success
  end
end
