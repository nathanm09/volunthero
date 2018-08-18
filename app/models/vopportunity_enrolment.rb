class VopportunityEnrolment < ApplicationRecord
    belongs_to :vopportunity
    belongs_to :vhero
    accepts_nested_attributes_for :vopportunity
end
