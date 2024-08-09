class PengajuaninformasisController < ApplicationController
  before_action :set_pengajuaninformasi, only: %i[ show edit update destroy ]

  before_action :authenticate_user!

  # GET /pengajuaninformasis or /pengajuaninformasis.json
  def index
    @pengajuaninformasis = Pengajuaninformasi.all
  end

  # GET /pengajuaninformasis/1 or /pengajuaninformasis/1.json
  def show
  end

  # GET /pengajuaninformasis/new
  def new
    @myPengajuan = Pengajuaninformasi.where(noEKtp: current_user.ktp).page(params[:page]).per(4)
    @pengajuaninformasi = current_user.pengajuaninformasis.new
  end

  # GET /pengajuaninformasis/1/edit
  def edit
  end

  # POST /pengajuaninformasis or /pengajuaninformasis.json
  def create
    @pengajuaninformasi = current_user.pengajuaninformasis.new(pengajuaninformasi_params)
    @pengajuaninformasi.status = "pengajuan"
    respond_to do |format|
      if @pengajuaninformasi.save
        format.html { redirect_to pengajuaninformasi_url(@pengajuaninformasi), notice: "Pengajuaninformasi was successfully created." }
        format.json { render :show, status: :created, location: @pengajuaninformasi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pengajuaninformasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pengajuaninformasis/1 or /pengajuaninformasis/1.json
  def update
    respond_to do |format|
      if @pengajuaninformasi.update(pengajuaninformasi_params)
        format.html { redirect_to pengajuaninformasi_url(@pengajuaninformasi), notice: "Pengajuaninformasi was successfully updated." }
        format.json { render :show, status: :ok, location: @pengajuaninformasi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pengajuaninformasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pengajuaninformasis/1 or /pengajuaninformasis/1.json
  def destroy
    @pengajuaninformasi.destroy

    respond_to do |format|
      format.html { redirect_to pengajuaninformasis_url, notice: "Pengajuaninformasi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pengajuaninformasi
      @pengajuaninformasi = Pengajuaninformasi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pengajuaninformasi_params
      params.require(:pengajuaninformasi).permit(:noEKtp, :namaLenkap, :alamatEmail, :noTelepon, :jenisPermohonan, :alamatLengkap, :pekerjaan, :kebutuhan, :tujuan, :cara_perolehan_informasi, :dokumenIdentitas, :dokumenPermohonanInformasi, :status)
    end
end
