class VopportunityEnrolment < ApplicationRecord
    has_many :vopportunities, foreign_key: "id"
    belongs_to :vhero, foreign_key: "id"
end
