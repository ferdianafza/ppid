class RenameTujuancaraPerolehanInformasiAndAddTujuanToPengajuanInformasi < ActiveRecord::Migration[7.0]
  def change
    rename_column :pengajuaninformasis, :tujuancaraPerolehanInformasi, :cara_perolehan_informasi
    add_column :pengajuaninformasis, :tujuan, :string
  end
end
