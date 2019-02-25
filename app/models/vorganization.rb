class Vorganization < ApplicationRecord
    validates :vorgname, presence: true,
                       length: { minimum: 5 }
    validates :email, presence: true, uniqueness: true
    has_many :vopportunities, dependent: :destroy
    has_secure_password
end
