##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class MonthlyList < ListResource
      ##
      # Initialize the MonthlyList
      def initialize(version, account_sid)
        super
        
        # Path Solution
        @solution = {
            account_sid: account_sid
        }
        @uri = "/Accounts/#{@solution[:account_sid]}/Usage/Records/Monthly"
      end
      
      ##
      # Reads MonthlyInstance records from the API as a list.
      def read(self, limit=nil, page_size=nil)
        @version.read(
            limit,
            page_size
        ))
      end
      
      ##
      # Retrieve a single page of MonthlyInstance records from the API.
      def page(self, page_token=None, page_number=None, page_size=None)
        params = values.of({
            PageToken: page_token,
            Page: page_number,
            PageSize: page_size,
        })
        @version.page(
            self,
            MonthlyInstance,
            {},
            'GET',
            @uri,
            params
        )
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Api.V2010.MonthlyList>'
      end
    end
  end
end