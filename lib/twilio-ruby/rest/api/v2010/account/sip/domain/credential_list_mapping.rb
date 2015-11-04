##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class CredentialListMappingList < ListResource
      ##
      # Initialize the CredentialListMappingList
      def initialize(version, account_sid, domain_sid)
        super
        
        # Path Solution
        @solution = {
            account_sid: account_sid,
            domain_sid: domain_sid
        }
        @uri = "/Accounts/#{@solution[:account_sid]}/SIP/Domains/#{@solution[:domain_sid]}/CredentialListMappings.json"
      end
      
      ##
      # Create a new CredentialListMappingInstance
      def create(self, credential_list_sid)
        data = values.of({
            CredentialListSid: credential_list_sid,
        })
        
        @version.create(
            CredentialListMappingInstance,
            @solution,
            'POST',
            @uri,
            {}
            data
        )
      end
      
      ##
      # Reads CredentialListMappingInstance records from the API as a list.
      def read(self, limit=nil, page_size=nil)
        @version.read(
            limit,
            page_size
        ))
      end
      
      ##
      # Retrieve a single page of CredentialListMappingInstance records from the API.
      def page(self, page_token=None, page_number=None, page_size=None)
        params = values.of({
            PageToken: page_token,
            Page: page_number,
            PageSize: page_size,
        })
        @version.page(
            self,
            CredentialListMappingInstance,
            @solution,
            'GET',
            @uri,
            params
        )
      end
      
      ##
      # Constructs a CredentialListMappingContext
      def get(sid)
        CredentialListMappingContext.new(@version, sid, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Api.V2010.CredentialListMappingList>'
      end
    end
  end
end