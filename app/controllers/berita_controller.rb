class BeritaController < ApplicationController
  def index
    @berita = Artikel.where(jenis: 'Berita')
  end
end
