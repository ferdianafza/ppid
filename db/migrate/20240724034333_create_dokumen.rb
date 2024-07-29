class CreateDokumen < ActiveRecord::Migration[7.0]
  def change
    create_table :dokumen do |t|
      t.string :judul_dokumen
      t.string :instansi
      t.string :jenis_dokumen
      t.string :jenis_informasi
      t.string :jenis_ppid

      t.timestamps
    end
  end
end
