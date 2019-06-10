class VorganizationsController < ApplicationController
  before_action :set_vorganization, only: [:show, :edit, :update, :destroy]
  before_action :vorgauthorize, only: [:edit, :update, :destroy]
  layout "orgapplication"
    
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
    @vorganization.email.downcase!
    
    respond_to do |format|
      if @vorganization.save
        format.html { redirect_to vorglogin_path, notice: 'Your account was created successfully. Please log in.' }
        format.json { render :show, status: :created, location: @vorganization }
      else
        format.html { render :new }
        flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
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
      params.require(:vorganization).permit(:vorgname, :website, :vorglogo, :shortdescr, :vorgtype, :city, :province, :country, :handles, :email, :password, :password_confirmation)
    end
end
