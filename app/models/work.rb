class Work < ApplicationRecord
    extend FriendlyId
  friendly_id :title, use: :slugged


  #validate work variables
  validates_presence_of :title, :body, :main_image, :thumb_image
  
def self.angular
    where(subtitle: 'Angular')
end

scope  :ruby_on_rails_work_items, ->{
    where(subtitle: 'Wonderful service subtitle goes here')
}

end
