ActiveAdmin.register Dokuman do
  permit_params :judul_dokumen, :instansi, :jenis_dokumen, :jenis_informasi, :jenis_ppid, :attachment

  index do
    selectable_column
    id_column
    column :judul_dokumen
    column :instansi
    column :jenis_dokumen
    column :jenis_informasi
    column :jenis_ppid
    column "Attachment" do |dokuman|
      if dokuman.attachment.attached?
        link_to dokuman.attachment.blob.filename, rails_blob_path(dokuman.attachment.blob)
      else
        "No attachment"
      end
    end
    actions
  end

  show do
    attributes_table do
      row :judul_dokumen
      row :instansi
      row :jenis_dokumen
      row :jenis_informasi
      row :jenis_ppid
      row "Attachment" do |dokuman|
        if dokuman.attachment.attached?
          link_to dokuman.attachment.blob.filename, rails_blob_path(dokuman.attachment.blob)
        else
          "No attachment"
        end
      end
    end
  end

  form do |f|
    f.inputs "Dokumen Detail" do
      f.input :attachment, as: :file
      f.input :judul_dokumen
      f.input :instansi
      f.input :jenis_dokumen, as: :select, collection: ["PROFIL BADAN PUBLIK", "PROGRAM DAN KEGIATAN", "INFORMASI KINERJA", "LAPORAN KEUANGAN", "LAPORAN DAN PROSEDUR AKSES INFORMASI", "PENGADUAN DAN PELANGGARAN", "PENGADAAN BARANG DAN JASA", "INFORMASI DARURAT", "HASIL PENELITIAN", "REGULASI"]
      f.input :jenis_informasi, as: :select, collection: ["INFORMASI BERKALA", "INFORMASI SETIAP SAAT", "INFORMASI SERTA MERTA", "INFORMASI DIKECUALIKAN"]
      f.input :jenis_ppid, as: :select, collection: ["PPID UTAMA", "PPID PELAKSANA", "PPID PEMBANTU"]
    end
    f.actions
  end

end
