require 'rails_helper'

RSpec.describe PengajuaninformasisController, type: :controller do
  let(:user) { create(:user) }
  let(:pdf_file) { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'files', 'sample.pdf'), 'application/pdf') }
  let(:valid_attributes) do
    {
      noEKtp: '1234567890123456',
      namaLenkap: 'John Doe',
      alamatEmail: 'john.doe@example.com',
      noTelepon: '081234567890',
      jenisPermohonan: 'perorangan',
      alamatLengkap: '123 Main St',
      pekerjaan: 'Developer',
      kebutuhan: 'Information',
      tujuan: 'Research',
      cara_perolehan_informasi: 'softcopy',
      dokumenIdentitas: pdf_file,
      dokumenPermohonanInformasi: pdf_file,
      status: 'pengajuan'
    }
  end

  before do
    sign_in user
  end

  describe 'GET #new' do
    it 'assigns a new pengajuaninformasi as @pengajuaninformasi' do
      get :new
      expect(assigns(:pengajuaninformasi)).to be_a_new(Pengajuaninformasi)
    end

    it 'assigns myPengajuan for pagination' do
      get :new
      expect(assigns(:myPengajuan)).to be_empty
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Pengajuaninformasi' do
        expect do
          post :create, params: { pengajuaninformasi: valid_attributes }
        end.to change(Pengajuaninformasi, :count).by(1)
      end

      it 'assigns a newly created pengajuaninformasi as @pengajuaninformasi' do
        post :create, params: { pengajuaninformasi: valid_attributes }
        expect(assigns(:pengajuaninformasi)).to be_a(Pengajuaninformasi)
        expect(assigns(:pengajuaninformasi)).to be_persisted
      end

      it 'redirects to the new pengajuaninformasi' do
        post :create, params: { pengajuaninformasi: valid_attributes }
        expect(response).to redirect_to(new_pengajuaninformasi_url)
      end
    end
  end

  describe 'PATCH/PUT #update' do
    let(:pengajuaninformasi) { create(:pengajuaninformasi, user: user, dokumenIdentitas: pdf_file, dokumenPermohonanInformasi: pdf_file) }

    context 'with valid params' do
      let(:new_attributes) do
        { namaLenkap: 'Jane Doe' }
      end

      it 'updates the requested pengajuaninformasi' do
        patch :update, params: { id: pengajuaninformasi.to_param, pengajuaninformasi: new_attributes }
        pengajuaninformasi.reload
        expect(pengajuaninformasi.namaLenkap).to eq('Jane Doe')
      end

      it 'assigns the requested pengajuaninformasi as @pengajuaninformasi' do
        patch :update, params: { id: pengajuaninformasi.to_param, pengajuaninformasi: valid_attributes }
        expect(assigns(:pengajuaninformasi)).to eq(pengajuaninformasi)
      end

      it 'redirects to the pengajuaninformasi' do
        patch :update, params: { id: pengajuaninformasi.to_param, pengajuaninformasi: valid_attributes }
        expect(response).to redirect_to(pengajuaninformasi_url(pengajuaninformasi))
      end
    end

  end
end
