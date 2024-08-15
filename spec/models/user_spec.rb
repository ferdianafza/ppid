# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:pengajuaninformasis) }
  describe 'Validasi Untuk KTP' do
    it "memastikan ktp ada" do
      user = User.new(nama_lengkap: "afza").save
      expect(user).to eq(false)
    end

    it 'valid ktp 16 digit' do
      user = User.new(ktp: '1234567890123456', telepon: '08123456789', email: "testing@gmail.com", name: "testing", username: "testing", alamat: "batujajar", pekerjaan: "mahasiswa", password: 123123,password_confirmation: 123123)
      expect(user).to be_valid
      expect(user.save).to eq(true)
    end

    it 'tidak valid ktp kurang dari 16 digit' do
      user = User.new(ktp: '123456789012345', telepon: '08123456789', email: "testing@gmail.com", name: "testing", username: "testing", alamat: "batujajar", pekerjaan: "mahasiswa", password: 123123,password_confirmation: 123123)
      expect(user.save).not_to eq(true)
    end

    it 'tidak valid ktp lebih dari 16 digit' do
      user = User.new(ktp: '12345678901234567', telepon: '08123456789')
      expect(user.save).not_to eq(true)
    end

    it 'tidak valid tanpa ktp' do
      user = User.new(telepon: '08123456789')
      expect(user).not_to be_valid
      expect(user.errors[:ktp]).to include("can't be blank")
    end
  end

  describe 'validations for telepon' do
    it 'is valid telepon' do
      user = User.new(ktp: '1234567890123456', telepon: '08123456789', email: 'testing@gmail.com', name: 'testing3', nama_lengkap: 'testinglagi', username: 'testing', alamat: 'batujajar', pekerjaan: 'mahasiswa', password: '123123', password_confirmation: '123123')
      expect(user).to be_valid
    end

    it 'is invalid telepon kurang dari 10 digit' do
      user = User.new(ktp: '1234567890123456', telepon: '081234567', email: 'testing@gmail.com', name: 'testing3', nama_lengkap: 'testinglagi', username: 'testing', alamat: 'batujajar', pekerjaan: 'mahasiswa', password: '123123', password_confirmation: '123123')
      expect(user).not_to be_valid
      expect(user.errors[:telepon]).to include('is too short (minimum is 10 characters)')
    end

    it 'is invalid with telepon lebih dari 10 digit' do
      user = User.new(ktp: '1234567890123456', telepon: '08123456789123', email: 'testing@gmail.com', name: 'testing3', nama_lengkap: 'testinglagi', username: 'testing', alamat: 'batujajar', pekerjaan: 'mahasiswa', password: '123123', password_confirmation: '123123')
      expect(user).not_to eq(true)
    end

    it 'is invalid tanpa telepon' do
      user = User.new(ktp: '1234567890123456', email: 'testing@gmail.com', name: 'testing3', nama_lengkap: 'testinglagi', username: 'testing', alamat: 'batujajar', pekerjaan: 'mahasiswa', password: '123123', password_confirmation: '123123')
      expect(user).not_to be_valid
      expect(user.errors[:telepon]).to include("can't be blank")
    end
  end

end
