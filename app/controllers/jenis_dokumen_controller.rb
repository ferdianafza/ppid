class JenisDokumenController < ApplicationController
  def profil_badan_publik
    @dokumen = Dokuman.where(jenis_dokumen: 'PROFIL BADAN PUBLIK').page(params[:page]).per(4)
  end

  def program_dan_kegiatan
    @dokumen = Dokuman.where(jenis_dokumen: 'PROGRAM DAN KEGIATAN').page(params[:page]).per(4)
  end

  def informasi_kinerja
    @dokumen = Dokuman.where(jenis_dokumen: 'INFORMASI KINERJA').page(params[:page]).per(4)
  end

  def laporan_keuangan
    @dokumen = Dokuman.where(jenis_dokumen: 'LAPORAN KEUANGAN').page(params[:page]).per(4)
  end

  def laporan_dan_prosedur_akses_informasi
    @dokumen = Dokuman.where(jenis_dokumen: 'LAPORAN DAN PROSEDUR AKSES INFORMASI').page(params[:page]).per(4)
  end

  def pengaduan_dan_pelanggaran
    @dokumen = Dokuman.where(jenis_dokumen: 'PENGADUAN DAN PELANGGARAN').page(params[:page]).per(4)
  end

  def pengadaan_barang_dan_jasa
    @dokumen = Dokuman.where(jenis_dokumen: 'PENGADAAN BARANG DAN JASA').page(params[:page]).per(4)
  end

  def informasi_darurat
    @dokumen = Dokuman.where(jenis_dokumen: 'INFORMASI DARURAT').page(params[:page]).per(4)
  end

  def hasil_penelitian
    @dokumen = Dokuman.where(jenis_dokumen: 'HASIL PENELITIAN').page(params[:page]).per(4)
  end

  def regulasi
    @dokumen = Dokuman.where(jenis_dokumen: 'REGULASI').page(params[:page]).per(4)
  end
end
