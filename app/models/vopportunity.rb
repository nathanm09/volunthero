class Vopportunity < ApplicationRecord
    belongs_to :vorganization, foreign_key: "vorganization_id"
    has_many :vopportunity_enrolments, :class_name => 'VopportunityEnrolment'
    has_many :vheros, through: :vopportunity_enrolments
    accepts_nested_attributes_for :vopportunity_enrolments
  
  def self.enrol
      @vopportunity.vopportunity_enrolment.build(params[:vorganization_id], current_user(:id))

  end
    
  def self.not_enroled
      Vopportunity.left_outer_joins(:vopportunity_enrolments).where("vopportunity_id is null")
  end
end
