class ArtikelsController < InheritedResources::Base

  private

    def artikel_params
      params.require(:artikel).permit(:jenis, :judul, :banner, :konten)
    end

end
