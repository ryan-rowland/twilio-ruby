##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class ReservationList < ListResource
      ##
      # Initialize the ReservationList
      def initialize(version, workspace_sid, task_sid)
        super
        
        # Path Solution
        @solution = {
            workspace_sid: workspace_sid,
            task_sid: task_sid
        }
        @uri = "/Workspaces/#{@solution[:workspace_sid]}/Tasks/#{@solution[:task_sid]}/Reservations"
      end
      
      ##
      # Reads ReservationInstance records from the API as a list.
      def read(self, limit=nil, page_size=nil)
        @version.read(
            limit,
            page_size
        ))
      end
      
      ##
      # Retrieve a single page of ReservationInstance records from the API.
      def page(self, page_token=None, page_number=None, page_size=None)
        params = values.of({
            PageToken: page_token,
            Page: page_number,
            PageSize: page_size,
        })
        @version.page(
            self,
            ReservationInstance,
            @solution,
            'GET',
            @uri,
            params
        )
      end
      
      ##
      # Constructs a ReservationContext
      def get(sid)
        ReservationContext.new(@version, sid, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Taskrouter.V1.ReservationList>'
      end
    end
  end
end