class PpidController < ApplicationController
  def utama
    @dokumen = Dokuman.where(jenis_ppid: 'PPID UTAMA')
  end

  def pelaksana
    @dokumen = Dokuman.where(jenis_ppid: 'PPID PELAKSANA')
  end

  def pembantu
    @dokumen = Dokuman.where(jenis_ppid: 'PPID PEMBANTU')
  end
end
