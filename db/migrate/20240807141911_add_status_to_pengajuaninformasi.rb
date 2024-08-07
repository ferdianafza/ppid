class AddStatusToPengajuaninformasi < ActiveRecord::Migration[7.0]
  def change
    add_column :pengajuaninformasis, :status, :string
  end
end
