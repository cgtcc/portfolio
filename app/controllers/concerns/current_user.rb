module CurrentUser
    extend ActiveSupport::Concern
included do
            before_action :set_source
end

#overriding the current_user method
#we want current user to be available even if current_user is not logged in
#example for testing w/ PRY : 
# OpenStruct.new(name: "name", first_name: "first_name", last_name:"last name", email: "my@email.com")
      def current_user 
              #will never return NIL, create a fake user
              #will return the super value (logged in user) OR the guest infos.
          super ||  guest_user
      end

      def guest_user
       #refactored so we can use ActiveRecords / Petergate
       # Was previously using OpenStruct:
       #                                   OpenStruct.new(name: "Guest", 
       #                                   first_name: "Guest", 
       #                                   last_name: "Guest", 
       #                                   email: "guest@unknow"
       #                                   )
       guest = GuestUser.new
       guest.name = "Guest User"
       guest.first_name = "Guest"
       guest.last_name = "User"
       guest.email = "guest@example.com"
       guest
      end


    
end 
