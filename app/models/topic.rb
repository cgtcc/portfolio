class Topic < ApplicationRecord
    validates_presence_of :title

#topic has many blog posts
    has_many :blogs
end
