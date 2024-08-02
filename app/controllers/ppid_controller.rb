class PpidController < ApplicationController
  def utama
    @dokumen = Dokuman.where(jenis_ppid: 'PPID UTAMA').page(params[:page]).per(4)
  end

  def pelaksana
    @dokumen = Dokuman.where(jenis_ppid: 'PPID PELAKSANA').page(params[:page]).per(4)
  end

  def pembantu
    @dokumen = Dokuman.where(jenis_ppid: 'PPID PEMBANTU').page(params[:page]).per(4)
  end
end
