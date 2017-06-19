module Placeholder
    extend ActiveSupport::Concern

    def self.image_generator(height:, width:)
        "http://placeholder.it/#{height}x#{width}"
    end
    
end
