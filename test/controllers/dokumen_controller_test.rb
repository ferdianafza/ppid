require "test_helper"

class DokumenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dokuman = dokumen(:one)
  end

  test "should get index" do
    get dokumen_url
    assert_response :success
  end

  test "should get new" do
    get new_dokuman_url
    assert_response :success
  end

  test "should create dokuman" do
    assert_difference("Dokuman.count") do
      post dokumen_url, params: { dokuman: { instansi: @dokuman.instansi, jenis_dokumen: @dokuman.jenis_dokumen, jenis_informasi: @dokuman.jenis_informasi, jenis_ppid: @dokuman.jenis_ppid, judul_dokumen: @dokuman.judul_dokumen } }
    end

    assert_redirected_to dokuman_url(Dokuman.last)
  end

  test "should show dokuman" do
    get dokuman_url(@dokuman)
    assert_response :success
  end

  test "should get edit" do
    get edit_dokuman_url(@dokuman)
    assert_response :success
  end

  test "should update dokuman" do
    patch dokuman_url(@dokuman), params: { dokuman: { instansi: @dokuman.instansi, jenis_dokumen: @dokuman.jenis_dokumen, jenis_informasi: @dokuman.jenis_informasi, jenis_ppid: @dokuman.jenis_ppid, judul_dokumen: @dokuman.judul_dokumen } }
    assert_redirected_to dokuman_url(@dokuman)
  end

  test "should destroy dokuman" do
    assert_difference("Dokuman.count", -1) do
      delete dokuman_url(@dokuman)
    end

    assert_redirected_to dokumen_url
  end
end
