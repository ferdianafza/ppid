require "test_helper"

class PpidControllerTest < ActionDispatch::IntegrationTest
  test "should get utama" do
    get ppid_utama_url
    assert_response :success
  end

  test "should get pelaksana" do
    get ppid_pelaksana_url
    assert_response :success
  end
end
