# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    panel "Pengajuan Informasi Baru Masuk" do
      table_for Pengajuaninformasi.where(status: "pengajuan").order(created_at: :desc)do
        column :noEKtp
        column :namaLenkap
        column :alamatEmail
        column :noTelepon
        column :created_at
      end
    end
  end 
end
