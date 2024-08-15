require 'rails_helper'

RSpec.describe Pengajuaninformasi, type: :model do
  it { should belong_to(:user) }
  it { should have_one_attached(:dokumenIdentitas) }
  it { should have_one_attached(:dokumenPermohonanInformasi) }

  describe 'validations' do
    let(:valid_file) { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'valid_document.pdf'), 'application/pdf') }
    let(:invalid_file) { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'invalid_document.txt'), 'text/plain') }
    let(:large_file) { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'large_document.pdf'), 'application/pdf') }

    it 'is valid with valid attributes' do
      pengajuan = build(:pengajuaninformasi)
      expect(pengajuan).to be_valid
    end

    it 'is invalid without dokumenIdentitas attached' do
      pengajuan = build(:pengajuaninformasi, dokumenIdentitas: nil)
      expect(pengajuan).to_not eq(true)
    end

    it 'is invalid with incorrect file type for dokumenIdentitas' do
      pengajuan = build(:pengajuaninformasi, dokumenIdentitas: invalid_file)
      expect(pengajuan).to_not eq(true)
    end

    it 'is invalid with file size greater than 5MB for dokumenIdentitas' do
      pengajuan = build(:pengajuaninformasi, dokumenIdentitas: large_file)
      expect(pengajuan).to_not eq(true)
    end

    it 'is invalid without dokumenPermohonanInformasi attached' do
      pengajuan = build(:pengajuaninformasi, dokumenPermohonanInformasi: nil)
      expect(pengajuan).to_not eq(true)
    end

    it 'is invalid with incorrect file type for dokumenPermohonanInformasi' do
      pengajuan = build(:pengajuaninformasi, dokumenPermohonanInformasi: invalid_file)
      expect(pengajuan).to_not eq(true)
    end

    it 'is invalid with file size greater than 5MB for dokumenPermohonanInformasi' do
      pengajuan = build(:pengajuaninformasi, dokumenPermohonanInformasi: large_file)
      expect(pengajuan).to_not eq(true)
    end
  end
end
