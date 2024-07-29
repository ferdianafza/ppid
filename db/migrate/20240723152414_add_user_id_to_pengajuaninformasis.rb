class AddUserIdToPengajuaninformasis < ActiveRecord::Migration[7.0]
  def change
    add_reference :pengajuaninformasis, :user, null: false, foreign_key: true
  end
end
