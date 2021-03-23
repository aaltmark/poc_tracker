class Stage < ApplicationRecord 
    has_many :opportunity_stages
    has_many :opportunities, through: :opportunity_stages
end 