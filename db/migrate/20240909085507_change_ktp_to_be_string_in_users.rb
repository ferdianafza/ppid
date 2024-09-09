class ChangeKtpToBeStringInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :ktp, :string
  end
end
