# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    email { "member@gmail.com" }
    password { "123123" }
    password_confirmation {"123123"}
    name {"member"}
    username {"member"}
    ktp {"1234567890123456"}
    nama_lengkap {"member"}
    telepon {"082127015766"}
    alamat {"Batujajar"}
    pekerjaan {"mahasiswa"}
  end
end
