class AddOtherFieldToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :ktp, :integer
    add_column :users, :nama_lengkap, :string
    add_column :users, :telepon, :integer
    add_column :users, :alamat, :string
    add_column :users, :pekerjaan, :string
  end
end
