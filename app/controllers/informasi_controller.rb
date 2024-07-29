class InformasiController < ApplicationController
  def berkala
    @dokumen = Dokuman.where(jenis_informasi: 'INFORMASI BERKALA')
  end

  def setiap_saat
    @dokumen = Dokuman.where(jenis_informasi: 'INFORMASI SETIAP SAAT')
  end

  def serta_merta
    @dokumen = Dokuman.where(jenis_informasi: 'INFORMASI SERTA MERTA')
  end

  def dikecualikan
    @dokumen = Dokuman.where(jenis_informasi: 'INFORMASI DIKECUALIKAN')
  end
end
