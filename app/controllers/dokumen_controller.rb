class DokumenController < InheritedResources::Base

  def increment_access
    @dokumen = Dokuman.find(params[:id])
    @dokumen.increment!(:access_count)
    @dokumen.touch(:updated_at)
    redirect_to rails_blob_path(@dokumen.attachment.blob)
  end

  private

    def dokuman_params
      params.require(:dokuman).permit(:judul_dokumen, :instansi, :jenis_dokumen, :jenis_informasi, :jenis_ppid)
    end

end
