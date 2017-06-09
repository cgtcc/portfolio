class Work < ApplicationRecord
    extend FriendlyId
  friendly_id :title, use: :slugged


  #validate work variables
  validates_presence_of :title, :body, :main_image, :thumb_image
  
end
