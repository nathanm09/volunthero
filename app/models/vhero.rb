class Vhero < ApplicationRecord
    has_many :vopportunities, through: :vopportunity_enrolment, foreign_key: "vhero_id"
end
