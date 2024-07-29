# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
User.create([
  {
    email: 'user1@example.com',
    password: '123123',
    password_confirmation: '123123', # Ini seharusnya di-hash menggunakan bcrypt atau algoritma hash lainnya
    name: 'John Doe',
    username: 'johndoe',
    ktp: '1234567890123456',
    nama_lengkap: 'John Doe',
    telepon: '08123456789',
    alamat: 'Jl. Contoh No. 123',
    pekerjaan: 'Engineer'
  },
  {
    email: 'user2@example.com',
    encrypted_password: 'password456',  # Ini seharusnya di-hash menggunakan bcrypt atau algoritma hash lainnya
    name: 'Jane Smith',
    username: 'janesmith',
    ktp: '9876543210987654',
    nama_lengkap: 'Jane Smith',
    telepon: '08543210987',
    alamat: 'Apartemen XYZ Lt. 5',
    pekerjaan: 'Designer'
  }
])
