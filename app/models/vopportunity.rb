class Vopportunity < ApplicationRecord
    belongs_to :vorganization, foreign_key: "organization_id"
    has_many :vheros, through: :vopportunity_enrolment, foreign_key: "organization_id"
end
