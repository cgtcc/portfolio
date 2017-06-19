class Skill < ApplicationRecord
  include Placeholder #see concerns/placeholder.rb


  #validate skill variables
  validates_presence_of :title, :percent_utilized
  


#set default values for images (if empty)
after_initialize :set_default_badge

def set_default_badge
    self.badge ||= Placeholder.image_generator(height: '200', width: '200')
end

end
