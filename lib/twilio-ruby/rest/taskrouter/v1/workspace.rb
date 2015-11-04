##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class WorkspaceList < ListResource
      ##
      # Initialize the WorkspaceList
      def initialize(version)
        super
        
        # Path Solution
        @solution = {}
        @uri = "/Workspaces"
      end
      
      ##
      # Reads WorkspaceInstance records from the API as a list.
      def read(self, friendly_name=values.unset, limit=nil, page_size=nil)
        @version.read(
            friendly_name,
            limit,
            page_size
        ))
      end
      
      ##
      # Retrieve a single page of WorkspaceInstance records from the API.
      def page(self, friendly_name=values.unset, page_token=None, page_number=None, page_size=None)
        params = values.of({
            FriendlyName: friendly_name,
            PageToken: page_token,
            Page: page_number,
            PageSize: page_size,
        })
        @version.page(
            self,
            WorkspaceInstance,
            @solution,
            'GET',
            @uri,
            params
        )
      end
      
      ##
      # Create a new WorkspaceInstance
      def create(self, friendly_name, event_callback_url=values.unset, template=values.unset)
        data = values.of({
            FriendlyName: friendly_name,
            EventCallbackUrl: event_callback_url,
            Template: template,
        })
        
        @version.create(
            WorkspaceInstance,
            @solution,
            'POST',
            @uri,
            {}
            data
        )
      end
      
      ##
      # Constructs a WorkspaceContext
      def get(sid)
        WorkspaceContext.new(@version, sid, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Taskrouter.V1.WorkspaceList>'
      end
    end
  end
end