class AddAccessCountToDokumen < ActiveRecord::Migration[7.0]
  def change
    add_column :dokumen, :access_count, :integer
  end
end
