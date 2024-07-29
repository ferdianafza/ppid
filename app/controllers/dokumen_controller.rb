class DokumenController < InheritedResources::Base

  private

    def dokuman_params
      params.require(:dokuman).permit(:judul_dokumen, :instansi, :jenis_dokumen, :jenis_informasi, :jenis_ppid)
    end

end
