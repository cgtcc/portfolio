class Skill < ApplicationRecord
  includes Placeholder #see concerns/placeholder.rb


  #validate skill variables
  validates_presence_of :title, :percent_utilized
  


#set default values for images (if empty)
after_initialize :set_defaults

def :set_defaults
    self.badge ||= Placeholder.image_generator(height: '200', width: '200')
end

end
