class Vopportunity < ApplicationRecord
    belongs_to :vorganization, foreign_key: "organization_id"
end
