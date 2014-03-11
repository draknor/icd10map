class Icd10dxesController < ApplicationController
  before_action :set_icd10dx, only: [:show, :edit, :update, :destroy]

  # GET /icd10dxes
  # GET /icd10dxes.json
  def index
    @icd10dxes = Icd10dx.all
  end

  # GET /icd10dxes/1
  # GET /icd10dxes/1.json
  def show
  end

  # GET /icd10dxes/new
  def new
    @icd10dx = Icd10dx.new
  end

  # GET /icd10dxes/1/edit
  def edit
  end

  # POST /icd10dxes
  # POST /icd10dxes.json
  def create
    @icd10dx = Icd10dx.new(icd10dx_params)

    respond_to do |format|
      if @icd10dx.save
        format.html { redirect_to @icd10dx, notice: 'Icd10dx was successfully created.' }
        format.json { render action: 'show', status: :created, location: @icd10dx }
      else
        format.html { render action: 'new' }
        format.json { render json: @icd10dx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icd10dxes/1
  # PATCH/PUT /icd10dxes/1.json
  def update
    respond_to do |format|
      if @icd10dx.update(icd10dx_params)
        format.html { redirect_to @icd10dx, notice: 'Icd10dx was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @icd10dx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icd10dxes/1
  # DELETE /icd10dxes/1.json
  def destroy
    @icd10dx.destroy
    respond_to do |format|
      format.html { redirect_to icd10dxes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icd10dx
      @icd10dx = Icd10dx.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def icd10dx_params
      params.require(:icd10dx).permit(:code, :description_short, :description_long)
    end
end
