require "test_helper"

class JenisDokumenControllerTest < ActionDispatch::IntegrationTest
  test "should get profil_badan_publik" do
    get jenis_dokumen_profil_badan_publik_url
    assert_response :success
  end

  test "should get program_dan_kegiatan" do
    get jenis_dokumen_program_dan_kegiatan_url
    assert_response :success
  end

  test "should get informasi_kinerja" do
    get jenis_dokumen_informasi_kinerja_url
    assert_response :success
  end

  test "should get laporan_keuangan" do
    get jenis_dokumen_laporan_keuangan_url
    assert_response :success
  end

  test "should get laporan_dan_prosedur_akses_informasi" do
    get jenis_dokumen_laporan_dan_prosedur_akses_informasi_url
    assert_response :success
  end

  test "should get pengaduan_dan_pelanggaran" do
    get jenis_dokumen_pengaduan_dan_pelanggaran_url
    assert_response :success
  end

  test "should get pengadaan_barang_dan_jasa" do
    get jenis_dokumen_pengadaan_barang_dan_jasa_url
    assert_response :success
  end

  test "should get informasi_darurat" do
    get jenis_dokumen_informasi_darurat_url
    assert_response :success
  end

  test "should get hasil_penelitian" do
    get jenis_dokumen_hasil_penelitian_url
    assert_response :success
  end

  test "should get regulasi" do
    get jenis_dokumen_regulasi_url
    assert_response :success
  end
end
