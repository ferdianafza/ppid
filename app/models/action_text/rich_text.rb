class ActionText::RichText < ApplicationRecord
  self.table_name = "action_text_rich_texts"

  belongs_to :record, polymorphic: true

  def self.ransackable_attributes(auth_object = nil)
   ["body", "created_at", "id", "name", "record_id", "record_type", "updated_at"]
  end
end
