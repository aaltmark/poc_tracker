class Opportunity < ApplicationRecord 
    has_many :notes 

    has_many :opportunity_stages
    has_many :stages, through: :opportunity_stages

    has_many :opportunity_platforms 
    has_many :platforms, through: :opportunity_platforms  
end 