require "application_system_test_case"

class DokumenTest < ApplicationSystemTestCase
  setup do
    @dokuman = dokumen(:one)
  end

  test "visiting the index" do
    visit dokumen_url
    assert_selector "h1", text: "Dokumen"
  end

  test "should create dokuman" do
    visit dokumen_url
    click_on "New dokuman"

    fill_in "Instansi", with: @dokuman.instansi
    fill_in "Jenis dokumen", with: @dokuman.jenis_dokumen
    fill_in "Jenis informasi", with: @dokuman.jenis_informasi
    fill_in "Jenis ppid", with: @dokuman.jenis_ppid
    fill_in "Judul dokumen", with: @dokuman.judul_dokumen
    click_on "Create Dokuman"

    assert_text "Dokuman was successfully created"
    click_on "Back"
  end

  test "should update Dokuman" do
    visit dokuman_url(@dokuman)
    click_on "Edit this dokuman", match: :first

    fill_in "Instansi", with: @dokuman.instansi
    fill_in "Jenis dokumen", with: @dokuman.jenis_dokumen
    fill_in "Jenis informasi", with: @dokuman.jenis_informasi
    fill_in "Jenis ppid", with: @dokuman.jenis_ppid
    fill_in "Judul dokumen", with: @dokuman.judul_dokumen
    click_on "Update Dokuman"

    assert_text "Dokuman was successfully updated"
    click_on "Back"
  end

  test "should destroy Dokuman" do
    visit dokuman_url(@dokuman)
    click_on "Destroy this dokuman", match: :first

    assert_text "Dokuman was successfully destroyed"
  end
end
