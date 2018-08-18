class Vhero < ApplicationRecord
    has_many :vopportunity_enrolments, :class_name => 'VopportunityEnrolment', foreign_key: "vhero_id"
    has_many :vopportunities, through: :vopportunity_enrolments, foreign_key: "vopportunity_id"
    has_secure_password
    # Verify that email field is not blank and that it doesn't already exist in the db (prevents duplicates):
	validates :email, presence: true, uniqueness: true
end