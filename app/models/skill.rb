class Skill < ApplicationRecord


  #validate skill variables
  validates_presence_of :title, :percent_utilized
  
end
