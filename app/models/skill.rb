class Skill < ApplicationRecord


  #validate skill variables
  validates_presence_of :title, :percent_utilized
  


#set default values for images (if empty)
after_initialize :set_defaults

def :set_defaults
    self.badge ||= "http://via.placeholder.com/200x200"
end

end
