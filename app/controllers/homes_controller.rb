class HomesController < ApplicationController
  # before_action :authenticate_user!

  def index
    @documenCount = Dokuman.count
    @pengajuaninformasiCount = Pengajuaninformasi.count
  end
end
