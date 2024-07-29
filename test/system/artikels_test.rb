require "application_system_test_case"

class ArtikelsTest < ApplicationSystemTestCase
  setup do
    @artikel = artikels(:one)
  end

  test "visiting the index" do
    visit artikels_url
    assert_selector "h1", text: "Artikels"
  end

  test "should create artikel" do
    visit artikels_url
    click_on "New artikel"

    fill_in "Banner", with: @artikel.banner
    fill_in "Jenis", with: @artikel.jenis
    fill_in "Judul", with: @artikel.judul
    fill_in "Konten", with: @artikel.konten
    click_on "Create Artikel"

    assert_text "Artikel was successfully created"
    click_on "Back"
  end

  test "should update Artikel" do
    visit artikel_url(@artikel)
    click_on "Edit this artikel", match: :first

    fill_in "Banner", with: @artikel.banner
    fill_in "Jenis", with: @artikel.jenis
    fill_in "Judul", with: @artikel.judul
    fill_in "Konten", with: @artikel.konten
    click_on "Update Artikel"

    assert_text "Artikel was successfully updated"
    click_on "Back"
  end

  test "should destroy Artikel" do
    visit artikel_url(@artikel)
    click_on "Destroy this artikel", match: :first

    assert_text "Artikel was successfully destroyed"
  end
end
