class CreatePengajuaninformasis < ActiveRecord::Migration[7.0]
  def change
    create_table :pengajuaninformasis do |t|
      t.string :noEKtp
      t.string :namaLenkap
      t.string :alamatEmail
      t.string :noTelepon
      t.string :jenisPermohonan
      t.string :alamatLengkap
      t.string :pekerjaan
      t.string :kebutuhan
      t.string :tujuancaraPerolehanInformasi
      t.string :dokumenIdentitas
      t.string :dokumenPermohonanInformasi

      t.timestamps
    end
  end
end
