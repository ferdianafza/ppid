Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'jenis_dokumen/profil_badan_publik'
  get 'jenis_dokumen/program_dan_kegiatan'
  get 'jenis_dokumen/informasi_kinerja'
  get 'jenis_dokumen/laporan_keuangan'
  get 'jenis_dokumen/laporan_dan_prosedur_akses_informasi'
  get 'jenis_dokumen/pengaduan_dan_pelanggaran'
  get 'jenis_dokumen/pengadaan_barang_dan_jasa'
  get 'jenis_dokumen/informasi_darurat'
  get 'jenis_dokumen/hasil_penelitian'
  get 'jenis_dokumen/regulasi'
  get 'informasi/berkala'
  get 'informasi/setiap_saat'
  get 'informasi/serta_merta'
  get 'informasi/dikecualikan'
  get 'ppid/utama'
  get 'ppid/pelaksana'
  get 'ppid/pembantu'
  resources :dokumen
  resources :artikels
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pengajuaninformasis
  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions' }
  # devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations'}
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions/#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :homes
  get '/berita', to: 'berita#index'
  get '/kegiatan', to: 'kegiatan#index'
  root to: 'homes#index'
end
