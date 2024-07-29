class JenisDokumenController < ApplicationController
  def profil_badan_publik
    @dokumen = Dokuman.where(jenis_dokumen: 'PROFIL BADAN PUBLIK')
  end

  def program_dan_kegiatan
    @dokumen = Dokuman.where(jenis_dokumen: 'PROGRAM DAN KEGIATAN')
  end

  def informasi_kinerja
    @dokumen = Dokuman.where(jenis_dokumen: 'INFORMASI KINERJA')
  end

  def laporan_keuangan
    @dokumen = Dokuman.where(jenis_dokumen: 'LAPORAN KEUANGAN')
  end

  def laporan_dan_prosedur_akses_informasi
    @dokumen = Dokuman.where(jenis_dokumen: 'LAPORAN DAN PROSEDUR AKSES INFORMASI')
  end

  def pengaduan_dan_pelanggaran
    @dokumen = Dokuman.where(jenis_dokumen: 'PENGADUAN DAN PELANGGARAN')
  end

  def pengadaan_barang_dan_jasa
    @dokumen = Dokuman.where(jenis_dokumen: 'PENGADAAN BARANG DAN JASA')
  end

  def informasi_darurat
    @dokumen = Dokuman.where(jenis_dokumen: 'INFORMASI DARURAT')
  end

  def hasil_penelitian
    @dokumen = Dokuman.where(jenis_dokumen: 'HASIL PENELITIAN')
  end

  def regulasi
    @dokumen = Dokuman.where(jenis_dokumen: 'REGULASI')
  end
end
