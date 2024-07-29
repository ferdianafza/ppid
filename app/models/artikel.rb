class Artikel < ApplicationRecord

  has_rich_text :konten
  has_one_attached :banner

  # Validasi atribut lainnya seperti jenis dan judul
  validates :jenis, inclusion: { in: ["Berita", "Kegiatan"] }
  validates :judul, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["banner", "created_at", "id", "jenis", "judul", "updated_at", "konten", "banner_attachment_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["rich_text_konten"]
  end

end
