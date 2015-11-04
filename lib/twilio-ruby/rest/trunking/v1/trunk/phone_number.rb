##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class PhoneNumberList < ListResource
      ##
      # Initialize the PhoneNumberList
      def initialize(version, trunk_sid)
        super
        
        # Path Solution
        @solution = {
            trunk_sid: trunk_sid
        }
        @uri = "/Trunks/#{@solution[:trunk_sid]}/PhoneNumbers"
      end
      
      ##
      # Create a new PhoneNumberInstance
      def create(self, phone_number_sid)
        data = values.of({
            PhoneNumberSid: phone_number_sid,
        })
        
        @version.create(
            PhoneNumberInstance,
            @solution,
            'POST',
            @uri,
            {}
            data
        )
      end
      
      ##
      # Reads PhoneNumberInstance records from the API as a list.
      def read(self, limit=nil, page_size=nil)
        @version.read(
            limit,
            page_size
        ))
      end
      
      ##
      # Retrieve a single page of PhoneNumberInstance records from the API.
      def page(self, page_token=None, page_number=None, page_size=None)
        params = values.of({
            PageToken: page_token,
            Page: page_number,
            PageSize: page_size,
        })
        @version.page(
            self,
            PhoneNumberInstance,
            @solution,
            'GET',
            @uri,
            params
        )
      end
      
      ##
      # Constructs a PhoneNumberContext
      def get(sid)
        PhoneNumberContext.new(@version, sid, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Trunking.V1.PhoneNumberList>'
      end
    end
  end
end