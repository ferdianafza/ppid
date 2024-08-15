# # spec/factories/pengajuaninformasis.rb
# FactoryBot.define do
#   factory :pengajuaninformasi do
#     user
#     noEKtp { "1234567890123456" }
#     namaLenkap { "testername" }
#     alamatEmail { "member@gmail.com" }
#     noTelepon { "082127015766" }
#     jenisPermohonan { "perorangan" }
#     alamatLengkap { "Batujajar" }
#     pekerjaan { "mahasiswa" }
#     kebutuhan { "example need" }
#     cara_perolehan_informasi { "link" }
#     tujuan { "example purpose" }
#     user_id { 15 }
#     status { "pengajuan" }
#
#     after(:build) do |pengajuaninformasi|
#       pengajuaninformasi.dokumenIdentitas.attach(
#         io: File.open(Rails.root.join('spec', 'fixtures', 'files', 'valid_document.pdf')),
#         filename: 'valid_document.pdf',
#         content_type: 'application/pdf'
#       )
#       pengajuaninformasi.dokumenPermohonanInformasi.attach(
#         io: File.open(Rails.root.join('spec', 'fixtures', 'files', 'valid_document.pdf')),
#         filename: 'valid_document.pdf',
#         content_type: 'application/pdf'
#       )
#     end
#   end
# end


# spec/factories/pengajuaninformasis.rb
FactoryBot.define do
  factory :pengajuaninformasi do
    association :user
    alamatEmail { "example@example.com" }
    alamatLengkap { "123 Main St" }
    jenisPermohonan { "example type" }
    kebutuhan { "example need" }
    namaLenkap { "John Doe" }
    noEKtp { "1234567890123456" }
    noTelepon { "082127015766" }
    pekerjaan { "Developer" }
    tujuan { "example purpose" }
    cara_perolehan_informasi { "online" }

    after(:build) do |pengajuaninformasi|
      pengajuaninformasi.dokumenIdentitas.attach(
        io: File.open(Rails.root.join('spec', 'fixtures', 'files', 'valid_document.pdf')),
        filename: 'valid_document.pdf',
        content_type: 'application/pdf'
      )
      pengajuaninformasi.dokumenPermohonanInformasi.attach(
        io: File.open(Rails.root.join('spec', 'fixtures', 'files', 'valid_document.pdf')),
        filename: 'valid_document.pdf',
        content_type: 'application/pdf'
      )
    end
  end
end
