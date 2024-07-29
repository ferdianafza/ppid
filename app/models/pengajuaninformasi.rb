class Pengajuaninformasi < ApplicationRecord
  belongs_to :user
  has_one_attached :dokumenIdentitas
  has_one_attached :dokumenPermohonanInformasi

  validate :validate_file_type_and_size

  attribute :cara_perolehan_informasi, :string

  def self.ransackable_attributes(auth_object = nil)
    ["alamatEmail", "alamatLengkap", "created_at", "id", "jenisPermohonan", "kebutuhan", "namaLenkap", "noEKtp", "noTelepon", "pekerjaan", "tujuan", "cara_perolehan_informasi", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end

  private

  def validate_file_type_and_size
    if dokumenIdentitas.attached?
      if !dokumenIdentitas.blob.content_type.start_with?('application/pdf')
        errors.add(:dokumenIdentitas, 'must be a PDF file')
      elsif dokumenIdentitas.blob.byte_size > 5.megabytes
        errors.add(:dokumenIdentitas, 'file size exceeds 5MB')
      end
    end

    if dokumenPermohonanInformasi.attached?
      if !dokumenPermohonanInformasi.blob.content_type.start_with?('application/pdf')
        errors.add(:dokumenPermohonanInformasi, 'must be a PDF file')
      elsif dokumenPermohonanInformasi.blob.byte_size > 5.megabytes
        errors.add(:dokumenPermohonanInformasi, 'file size exceeds 5MB')
      end
    end
  end
end
