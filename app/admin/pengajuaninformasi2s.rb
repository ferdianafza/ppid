ActiveAdmin.register Pengajuaninformasi do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :noEKtp, :namaLenkap, :alamatEmail, :noTelepon, :jenisPermohonan, :alamatLengkap, :pekerjaan, :kebutuhan, :tujuancaraPerolehanInformasi, :dokumenIdentitas, :dokumenPermohonanInformasi
  #
  # or
  #
  # permit_params do
  #   permitted = [:noEKtp, :namaLenkap, :alamatEmail, :noTelepon, :jenisPermohonan, :alamatLengkap, :pekerjaan, :kebutuhan, :tujuancaraPerolehanInformasi, :dokumenIdentitas, :dokumenPermohonanInformasi]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :cara_perolehan_informasi, :other_attributes

 # Specify searchable attributes
 filter :cara_perolehan_informasi_cont, label: 'Cara Perolehan Informasi'

end
