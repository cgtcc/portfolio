class Skill < ApplicationRecord


  #validate skill variables
  validate_presence_of :title, :percent_utilized
  
end
