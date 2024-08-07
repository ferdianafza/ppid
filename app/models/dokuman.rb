class Dokuman < ApplicationRecord
  after_initialize :set_default_access_count, if: :new_record?

  has_one_attached :attachment

  def self.ransackable_attributes(auth_object = nil)
   ["attachment", "created_at", "id", "instansi", "jenis_dokumen", "jenis_informasi", "jenis_ppid", "judul_dokumen", "updated_at"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["attachment_attachment", "attachment_blob"]
  end

  def set_default_access_count
    self.access_count ||= 0
  end
end
