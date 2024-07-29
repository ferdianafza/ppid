class AddAttachmentToDokumen < ActiveRecord::Migration[7.0]
  def change
    add_column :dokumen, :attachment, :string
  end
end
