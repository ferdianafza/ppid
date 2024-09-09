class ChangeTeleponToString < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :telepon, :string
  end
end
