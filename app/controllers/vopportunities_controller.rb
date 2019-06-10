class VopportunitiesController < ApplicationController
  before_action :set_vopportunity, only: [:show, :edit, :update, :destroy]
  before_action :vorgauthorize, only: [:create, :edit, :update, :destroy]

  # GET /vopportunities
  # GET /vopportunities.json
  def index
    @vopportunities = Vopportunity.all
  end

  # GET /vopportunities/1
  # GET /vopportunities/1.json
  def show
      @vopportunity = Vopportunity.find(params[:id])
  end

  # GET /vopportunities/new
  def new
    render :layout => "orgapplication"
    #@vorganization = Vorganization.find(session[:vorgid])
    @vopportunity = Vopportunity.new
  end

  # GET /vopportunities/1/edit
  def edit
  end

  # POST /vopportunities
  # POST /vopportunities.json
  def create
   @vorganization = Vorganization.find(session[:vorgid])
   @vopportunity = @vorganization.vopportunities.build(vopportunity_params)
   @vopportunity.vorganization_id = session[:vorgid]

      respond_to do |format|
      if @vopportunity.save
        format.html { redirect_to @vorganization, notice: 'Opportunity was successfully created.' }
        format.json { render :show, status: :created, location: @vopportunity }
      else
        format.html { render :new }
        format.json { render json: @vopportunity.errors, notice: 'Something went wrong, please try again.'  }
      end
    end
      
    #Original scaffolding code below  
    # @vopportunity = Vopportunity.new(vopportunity_params)

    #respond_to do |format|
     # if @vopportunity.save
      #  format.html { redirect_to @vopportunity, notice: 'Vopportunity was successfully created.' }
       # format.json { render :show, status: :created, location: @vopportunity }
      #else
       # format.html { render :new }
        #format.json { render json: @vopportunity.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # PATCH/PUT /vopportunities/1
  # PATCH/PUT /vopportunities/1.json
  def update
    respond_to do |format|
      if @vopportunity.update(vopportunity_params)
        format.html { redirect_to @vopportunity, notice: 'Vopportunity was successfully updated.' }
        format.json { render :show, status: :ok, location: @vopportunity }
      else
        format.html { render :edit }
        format.json { render json: @vopportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vopportunities/1
  # DELETE /vopportunities/1.json
  def destroy
    @vopportunity.destroy
    respond_to do |format|
      format.html { redirect_to vopportunities_url, notice: 'Opportunity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vopportunity
      @vopportunity = Vopportunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vopportunity_params
      params.require(:vopportunity).permit(:voppname, :vopplogo, :title, :shortdescr, :vorganization_id, :vherodescription, :responsibilities, :jobfunction, :positionsavailable, :deadlinedate, :website, :industry, :voppbanner, :voppdate, :vopphours, :voppaddress, :voppcity, :vopparea, :voppcountry)
    end
    
    def set_vorganization
      @vorganization = Vorganization.find(params[:vorganization_id])
    end
end
