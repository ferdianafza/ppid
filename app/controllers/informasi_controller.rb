class InformasiController < ApplicationController
  def berkala
    @dokumen = Dokuman.where(jenis_informasi: 'INFORMASI BERKALA').page(params[:page]).per(4)
  end

  def setiap_saat
    @dokumen = Dokuman.where(jenis_informasi: 'INFORMASI SETIAP SAAT').page(params[:page]).per(4)
  end

  def serta_merta
    @dokumen = Dokuman.where(jenis_informasi: 'INFORMASI SERTA MERTA').page(params[:page]).per(4)
  end

  def dikecualikan
    @dokumen = Dokuman.where(jenis_informasi: 'INFORMASI DIKECUALIKAN').page(params[:page]).per(4)
  end
end
