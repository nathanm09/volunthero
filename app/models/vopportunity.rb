class Vopportunity < ApplicationRecord
    belongs_to :vorganization, foreign_key: "vorganization_id"
    has_many :vopportunity_enrolment, :class_name => 'VopportunityEnrolment'
    has_many :vheros, through: :vopportunity_enrolment, foreign_key: "vopportunity_id"
end
