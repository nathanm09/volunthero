class Vorganization < ApplicationRecord
    validates :vorgname, presence: true,
                       length: { minimum: 5}
    has_many :vopportunity
end
