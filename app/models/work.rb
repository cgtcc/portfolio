class Work < ApplicationRecord
    has_many :technologies
    accepts_nested_attributes_for :technologies,  #no technology is required in the form, we only validate if blank, since added automagically
                                                                  reject_if: lambda { |x|  attrs['name'].blank? }  
    #because of the previous line, we want nested items for technologies.  
    #Therefore, we can create a new Work item from console using this syntax  :
    # Work.create!(title: "title", subtitle: "subtitle", body: "body", technologies_attributes[{ name: "Ruby"'}, {  name: "Javascript"}, { name: "AngularJS"}, { name: "Ionic" }])

    include Placeholder

    extend FriendlyId
  friendly_id :title, use: :slugged


  #validate work variables
  validates_presence_of :title, :body, :main_image, :thumb_image
  
def self.angular
    where(subtitle: 'Angular')
end


#set default values for images (if empty)
after_initialize :set_defaults

def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
end


end
