class User < ApplicationRecord
  attr_accessor :name
  has_many :pengajuaninformasis

  # validates :ktp, presence: true, length: { minimum: 16, maximum: 16}
  validates :ktp, presence: true, length: { is: 16 }

  # Validasi untuk memastikan nama lengkap hanya mengandung huruf
  validates :nama_lengkap, format: { with: /\A[a-zA-Z\s]+\z/, message: "hanya boleh mengandung huruf dan spasi" }

  validates :telepon, presence: true, length: { minimum: 10, maximum: 13}

  def self.ransackable_attributes(auth_object = nil)
   @ransackable_attributes ||= column_names + _ransackers.keys + _ransack_aliases.keys + attribute_aliases.keys
 end

 def self.ransackable_associations(auth_object = nil)
   ["pengajuaninformasis"]
 end


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
