ActiveAdmin.register Pengajuaninformasi do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :noEKtp, :namaLenkap, :alamatEmail, :noTelepon, :jenisPermohonan, :alamatLengkap, :pekerjaan, :kebutuhan, :cara_perolehan_informasi, :dokumenIdentitas, :dokumenPermohonanInformasi, :tujuan
  #
  # or
  #
  # permit_params do
  #   permitted = [:noEKtp, :namaLenkap, :alamatEmail, :noTelepon, :jenisPermohonan, :alamatLengkap, :pekerjaan, :kebutuhan, :cara_perolehan_informasi, :dokumenIdentitas, :dokumenPermohonanInformasi, :tujuan]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :status

  scope :all, default: true
  scope "Pengajuan" do |scope|
    scope.where(status: "pengajuan")
  end
  scope "Diproses" do |scope|
    scope.where(status: "diproses")
  end
  scope "Selesai" do |scope|
    scope.where(status: "selesai")
  end

  form do |f|
    f.inputs do
      f.input :status, as: :select, collection: ["pengajuan", "diproses", "selesai"]
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :noEKtp
    column :namaLenkap
    column :alamatEmail
    column :noTelepon
    column :jenisPermohonan
    column :status
    # column :alamatLengkap
    # column :pekerjaan
    column :kebutuhan
    column :cara_perolehan_informasi
    column :tujuan
    column "dokumenIdentitas" do |pengajuaninformasis|
      if pengajuaninformasis.dokumenIdentitas.attached?
        link_to pengajuaninformasis.dokumenIdentitas.blob.filename, rails_blob_path(pengajuaninformasis.dokumenIdentitas.blob)
      else
        "No dokumenIdentitas"
      end
    end
    column "dokumenPermohonanInformasi" do |pengajuaninformasis|
      if pengajuaninformasis.dokumenPermohonanInformasi.attached?
        link_to pengajuaninformasis.dokumenPermohonanInformasi.blob.filename, rails_blob_path(pengajuaninformasis.dokumenPermohonanInformasi.blob)
      else
        "No dokumenPermohonanInformasi"
      end
    end
    actions
  end

end
