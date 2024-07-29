require "test_helper"

class PengajuaninformasisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pengajuaninformasi = pengajuaninformasis(:one)
  end

  test "should get index" do
    get pengajuaninformasis_url
    assert_response :success
  end

  test "should get new" do
    get new_pengajuaninformasi_url
    assert_response :success
  end

  test "should create pengajuaninformasi" do
    assert_difference("Pengajuaninformasi.count") do
      post pengajuaninformasis_url, params: { pengajuaninformasi: { alamatEmail: @pengajuaninformasi.alamatEmail, alamatLengkap: @pengajuaninformasi.alamatLengkap, dokumenIdentitas: @pengajuaninformasi.dokumenIdentitas, dokumenPermohonanInformasi: @pengajuaninformasi.dokumenPermohonanInformasi, jenisPermohonan: @pengajuaninformasi.jenisPermohonan, kebutuhan: @pengajuaninformasi.kebutuhan, namaLenkap: @pengajuaninformasi.namaLenkap, noEKtp: @pengajuaninformasi.noEKtp, noTelepon: @pengajuaninformasi.noTelepon, pekerjaan: @pengajuaninformasi.pekerjaan, tujuancaraPerolehanInformasi: @pengajuaninformasi.tujuancaraPerolehanInformasi } }
    end

    assert_redirected_to pengajuaninformasi_url(Pengajuaninformasi.last)
  end

  test "should show pengajuaninformasi" do
    get pengajuaninformasi_url(@pengajuaninformasi)
    assert_response :success
  end

  test "should get edit" do
    get edit_pengajuaninformasi_url(@pengajuaninformasi)
    assert_response :success
  end

  test "should update pengajuaninformasi" do
    patch pengajuaninformasi_url(@pengajuaninformasi), params: { pengajuaninformasi: { alamatEmail: @pengajuaninformasi.alamatEmail, alamatLengkap: @pengajuaninformasi.alamatLengkap, dokumenIdentitas: @pengajuaninformasi.dokumenIdentitas, dokumenPermohonanInformasi: @pengajuaninformasi.dokumenPermohonanInformasi, jenisPermohonan: @pengajuaninformasi.jenisPermohonan, kebutuhan: @pengajuaninformasi.kebutuhan, namaLenkap: @pengajuaninformasi.namaLenkap, noEKtp: @pengajuaninformasi.noEKtp, noTelepon: @pengajuaninformasi.noTelepon, pekerjaan: @pengajuaninformasi.pekerjaan, tujuancaraPerolehanInformasi: @pengajuaninformasi.tujuancaraPerolehanInformasi } }
    assert_redirected_to pengajuaninformasi_url(@pengajuaninformasi)
  end

  test "should destroy pengajuaninformasi" do
    assert_difference("Pengajuaninformasi.count", -1) do
      delete pengajuaninformasi_url(@pengajuaninformasi)
    end

    assert_redirected_to pengajuaninformasis_url
  end
end
