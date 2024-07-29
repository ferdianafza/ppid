class KegiatanController < ApplicationController
  def index
    @kegiatan = Artikel.where(jenis: 'Kegiatan')
  end
end
