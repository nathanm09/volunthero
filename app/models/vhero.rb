class Vhero < ApplicationRecord
    has_many :vopportunity_enrolment, :class_name => 'VopportunityEnrolment', foreign_key: "vhero_id"
    has_many :vopportunities, through: :vopportunity_enrolment
    
end