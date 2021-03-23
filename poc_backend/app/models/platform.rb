class Platform < ApplicationRecord 
    has_many :opportunity_platforms 
    has_many :opportunities, through: :opportunity_platforms
end 