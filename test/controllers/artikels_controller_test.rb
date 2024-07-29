require "test_helper"

class ArtikelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artikel = artikels(:one)
  end

  test "should get index" do
    get artikels_url
    assert_response :success
  end

  test "should get new" do
    get new_artikel_url
    assert_response :success
  end

  test "should create artikel" do
    assert_difference("Artikel.count") do
      post artikels_url, params: { artikel: { banner: @artikel.banner, jenis: @artikel.jenis, judul: @artikel.judul, konten: @artikel.konten } }
    end

    assert_redirected_to artikel_url(Artikel.last)
  end

  test "should show artikel" do
    get artikel_url(@artikel)
    assert_response :success
  end

  test "should get edit" do
    get edit_artikel_url(@artikel)
    assert_response :success
  end

  test "should update artikel" do
    patch artikel_url(@artikel), params: { artikel: { banner: @artikel.banner, jenis: @artikel.jenis, judul: @artikel.judul, konten: @artikel.konten } }
    assert_redirected_to artikel_url(@artikel)
  end

  test "should destroy artikel" do
    assert_difference("Artikel.count", -1) do
      delete artikel_url(@artikel)
    end

    assert_redirected_to artikels_url
  end
end
