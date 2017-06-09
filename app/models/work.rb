class Work < ApplicationRecord
    extend FriendlyId
  friendly_id :title, use: :slugged


  #validate work variables
  validate_presence_of :title, :body, :main_image, :thumb_image
  
end
