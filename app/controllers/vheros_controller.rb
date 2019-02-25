class VherosController < ApplicationController
  before_action :set_vhero, only: [:show, :edit, :update, :destroy]
  before_action :vheroauthorize, only: [:show, :edit, :update, :destroy]

  # GET /vheros
  # GET /vheros.json
  def index
    @vheros = Vhero.all
  end

  # GET /vheros/1
  # GET /vheros/1.json
  def show
      @vhero = Vhero.find(params[:id])
  end

  # GET /vheros/new
  def new
    @vhero = Vhero.new
  end

  # GET /vheros/1/edit
  def edit
  end

  # POST /vheros
  # POST /vheros.json
  def create
    @vhero = Vhero.new(vhero_params)
      
    @vhero.email.downcase!

    respond_to do |format|
      if @vhero.save
        format.html { redirect_to @vhero, notice: 'Vhero was successfully created.' }
        format.json { render :show, status: :created, location: @vhero }
      else
        format.html { render :new }
        flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
        render :new
        # Removed from scaffold code  
        # format.json { render json: @vhero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vheros/1
  # PATCH/PUT /vheros/1.json
  def update
    respond_to do |format|
      if @vhero.update(vhero_params)
        format.html { redirect_to @vhero, notice: 'Vhero was successfully updated.' }
        format.json { render :show, status: :ok, location: @vhero }
      else
        format.html { render :edit }
        format.json { render json: @vhero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vheros/1
  # DELETE /vheros/1.json
  def destroy
    @vhero.destroy
    respond_to do |format|
      format.html { redirect_to vheros_url, notice: 'Vhero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vhero
      @vhero = Vhero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vhero_params
      params.require(:vhero).permit(:firstname, :lastname, :email, :password, :shortdescr, :jobtitle, :organization, :lastschool, :city, :province, :country, :handles, :interests)
    end
end
