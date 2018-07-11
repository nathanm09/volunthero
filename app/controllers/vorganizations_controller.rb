class VorganizationsController < ApplicationController
  before_action :set_vorganization, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "nathan", password: "tuxedo", except: [:index, :show]
    
  # GET /vorganizations
  # GET /vorganizations.json
  def index
    @vorganizations = Vorganization.all
  end

  # GET /vorganizations/1
  # GET /vorganizations/1.json
  def show
  end

  # GET /vorganizations/new
  def new
    @vorganization = Vorganization.new
  end

  # GET /vorganizations/1/edit
  def edit
  end

  # POST /vorganizations
  # POST /vorganizations.json
  def create
    @vorganization = Vorganization.new(vorganization_params)
    
    respond_to do |format|
      if @vorganization.save
        format.html { redirect_to @vorganization, notice: 'Vorganization was successfully created.' }
        format.json { render :show, status: :created, location: @vorganization }
      else
        format.html { render :new }
        format.json { render json: @vorganization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vorganizations/1
  # PATCH/PUT /vorganizations/1.json
  def update
    respond_to do |format|
      if @vorganization.update(vorganization_params)
        format.html { redirect_to @vorganization, notice: 'Vorganization was successfully updated.' }
        format.json { render :show, status: :ok, location: @vorganization }
      else
        format.html { render :edit }
        format.json { render json: @vorganization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vorganizations/1
  # DELETE /vorganizations/1.json
  def destroy
    @vorganization.destroy
    respond_to do |format|
      format.html { redirect_to vorganizations_url, notice: 'Vorganization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vorganization
      @vorganization = Vorganization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vorganization_params
      params.require(:vorganization).permit(:vorgname, :website, :vorglogo, :shortdescr, :vorgtype, :city, :province, :country, :handles)
    end
end
