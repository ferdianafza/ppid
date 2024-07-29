require "test_helper"

class InformasiControllerTest < ActionDispatch::IntegrationTest
  test "should get berkala" do
    get informasi_berkala_url
    assert_response :success
  end

  test "should get setiap_saat" do
    get informasi_setiap_saat_url
    assert_response :success
  end

  test "should get serta_merta" do
    get informasi_serta_merta_url
    assert_response :success
  end

  test "should get dikecualikan" do
    get informasi_dikecualikan_url
    assert_response :success
  end
end
