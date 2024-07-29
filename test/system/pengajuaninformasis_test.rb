require "application_system_test_case"

class PengajuaninformasisTest < ApplicationSystemTestCase
  setup do
    @pengajuaninformasi = pengajuaninformasis(:one)
  end

  test "visiting the index" do
    visit pengajuaninformasis_url
    assert_selector "h1", text: "Pengajuaninformasis"
  end

  test "should create pengajuaninformasi" do
    visit pengajuaninformasis_url
    click_on "New pengajuaninformasi"

    fill_in "Alamatemail", with: @pengajuaninformasi.alamatEmail
    fill_in "Alamatlengkap", with: @pengajuaninformasi.alamatLengkap
    fill_in "Dokumenidentitas", with: @pengajuaninformasi.dokumenIdentitas
    fill_in "Dokumenpermohonaninformasi", with: @pengajuaninformasi.dokumenPermohonanInformasi
    fill_in "Jenispermohonan", with: @pengajuaninformasi.jenisPermohonan
    fill_in "Kebutuhan", with: @pengajuaninformasi.kebutuhan
    fill_in "Namalenkap", with: @pengajuaninformasi.namaLenkap
    fill_in "Noektp", with: @pengajuaninformasi.noEKtp
    fill_in "Notelepon", with: @pengajuaninformasi.noTelepon
    fill_in "Pekerjaan", with: @pengajuaninformasi.pekerjaan
    fill_in "Tujuancaraperolehaninformasi", with: @pengajuaninformasi.tujuancaraPerolehanInformasi
    click_on "Create Pengajuaninformasi"

    assert_text "Pengajuaninformasi was successfully created"
    click_on "Back"
  end

  test "should update Pengajuaninformasi" do
    visit pengajuaninformasi_url(@pengajuaninformasi)
    click_on "Edit this pengajuaninformasi", match: :first

    fill_in "Alamatemail", with: @pengajuaninformasi.alamatEmail
    fill_in "Alamatlengkap", with: @pengajuaninformasi.alamatLengkap
    fill_in "Dokumenidentitas", with: @pengajuaninformasi.dokumenIdentitas
    fill_in "Dokumenpermohonaninformasi", with: @pengajuaninformasi.dokumenPermohonanInformasi
    fill_in "Jenispermohonan", with: @pengajuaninformasi.jenisPermohonan
    fill_in "Kebutuhan", with: @pengajuaninformasi.kebutuhan
    fill_in "Namalenkap", with: @pengajuaninformasi.namaLenkap
    fill_in "Noektp", with: @pengajuaninformasi.noEKtp
    fill_in "Notelepon", with: @pengajuaninformasi.noTelepon
    fill_in "Pekerjaan", with: @pengajuaninformasi.pekerjaan
    fill_in "Tujuancaraperolehaninformasi", with: @pengajuaninformasi.tujuancaraPerolehanInformasi
    click_on "Update Pengajuaninformasi"

    assert_text "Pengajuaninformasi was successfully updated"
    click_on "Back"
  end

  test "should destroy Pengajuaninformasi" do
    visit pengajuaninformasi_url(@pengajuaninformasi)
    click_on "Destroy this pengajuaninformasi", match: :first

    assert_text "Pengajuaninformasi was successfully destroyed"
  end
end
