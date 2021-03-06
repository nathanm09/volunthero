class VopportunityEnrolmentsController < ApplicationController
  before_action :set_vopportunity, only: [:create]

  # GET /vopportunity_enrolments
  # GET /vopportunity_enrolments.json
  def index
    @vopportunity_enrolments = VopportunityEnrolment.all
  end

  # GET /vopportunity_enrolments/1
  # GET /vopportunity_enrolments/1.json
  def show
  end

  # GET /vopportunity_enrolments/new
  def new
    @vopportunity_enrolment = VopportunityEnrolment.new
  end

  # GET /vopportunity_enrolments/1/edit
  def edit
  end

  # POST /vopportunity_enrolments
  # POST /vopportunity_enrolments.json
  def create
    #Old scaffold code
    # @vopportunity_enrolment = VopportunityEnrolment.new(vopportunity_enrolment_params)  
    #@vopportunity = Vopportunity.find(params[:vopportunity_id])
    #@vopportunity_enrolment = VopportunityEnrolment.new(vhero_id: current_user.id, vopportunity_id: @vopportunity.id)
    
    @vopportunity_enrolment = @vopportunity.vopportunity_enrolments.build
    @vopportunity_enrolment.vhero_id = current_user.id
      
    respond_to do |format|
        if @vopportunity_enrolment.update(vopportunity_enrolment_params)
          format.html { redirect_to @vopportunity, notice: 'Congratulations! You have successfully enrolled!' }
            format.json { render :show, status: :created, location: @vopportunity }
          else
            format.html { render :new }
            format.json { render json: @vopportunity_enrolment.errors, status: :unprocessable_entity }
        end
    end

    #respond_to do |format|
     # if @vopportunity_enrolment.save
      #  format.html { redirect_to @vopportunity_enrolment, notice: 'Vopportunity enrolment was successfully created.' }
       # format.json { render :show, status: :created, location: @vopportunity_enrolment }
      #else
        #format.html { render :new }
        #format.json { render json: @vopportunity_enrolment.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # PATCH/PUT /vopportunity_enrolments/1
  # PATCH/PUT /vopportunity_enrolments/1.json
  def update
    respond_to do |format|
      if @vopportunity_enrolment.save(vopportunity_enrolment_params)
        format.html { redirect_to @vopportunity_enrolment, notice: 'Enrolled! Congratulations!' }
        format.json { render :show, status: :ok, location: @vopportunity_enrolment }
      else
        format.html { render :edit }
        format.json { render json: @vopportunity_enrolment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vopportunity_enrolments/1
  # DELETE /vopportunity_enrolments/1.json
  def destroy
    @vopportunity_enrolment = VopportunityEnrolment.find_by(vhero_id: params[:vhero_id], vopportunity_id: params[:id])
    @vopportunity_enrolment.destroy
    respond_to do |format|
      format.html { redirect_to vopportunity_path, notice: 'Enrollment was successfully cancelled.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vopportunity_enrolment
      @vopportunity_enrolment = VopportunityEnrolment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vopportunity_enrolment_params
      params.permit(:vopportunity_enrolment).permit(:vhero_id, :vopportunity_id)
    end
    
    def set_vopportunity
        @vopportunity = Vopportunity.find(params[:vopportunity_id])
    end
end
