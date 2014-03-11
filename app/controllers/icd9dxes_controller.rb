class Icd9dxesController < ApplicationController
  before_action :set_icd9dx, only: [:show, :edit, :update, :destroy]

  # GET /icd9dxes
  # GET /icd9dxes.json
  def index
    @icd9dxes = Icd9dx.all.limit(100)
  end

  # GET /icd9dxes/1
  # GET /icd9dxes/1.json
  def show
  end

  # GET /icd9dxes/new
  def new
    @icd9dx = Icd9dx.new
  end

  # GET /icd9dxes/1/edit
  def edit
  end

  # POST /icd9dxes
  # POST /icd9dxes.json
  def create
    @icd9dx = Icd9dx.new(icd9dx_params)

    respond_to do |format|
      if @icd9dx.save
        format.html { redirect_to @icd9dx, notice: 'Icd9dx was successfully created.' }
        format.json { render action: 'show', status: :created, location: @icd9dx }
      else
        format.html { render action: 'new' }
        format.json { render json: @icd9dx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icd9dxes/1
  # PATCH/PUT /icd9dxes/1.json
  def update
    respond_to do |format|
      if @icd9dx.update(icd9dx_params)
        format.html { redirect_to @icd9dx, notice: 'Icd9dx was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @icd9dx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icd9dxes/1
  # DELETE /icd9dxes/1.json
  def destroy
    @icd9dx.destroy
    respond_to do |format|
      format.html { redirect_to icd9dxes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icd9dx
      @icd9dx = Icd9dx.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def icd9dx_params
      params.require(:icd9dx).permit(:code, :description_short, :description_long)
    end
end
