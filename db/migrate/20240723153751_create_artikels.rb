class CreateArtikels < ActiveRecord::Migration[7.0]
  def change
    create_table :artikels do |t|
      t.string :jenis
      t.string :judul
      t.string :banner
      t.string :konten

      t.timestamps
    end
  end
end
