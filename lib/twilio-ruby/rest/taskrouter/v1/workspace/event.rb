##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class EventList < ListResource
      ##
      # Initialize the EventList
      def initialize(version, workspace_sid)
        super
        
        # Path Solution
        @solution = {
            workspace_sid: workspace_sid
        }
        @uri = "/Workspaces/#{@solution[:workspace_sid]}/Events"
      end
      
      ##
      # Reads EventInstance records from the API as a list.
      def read(self, end_date=values.unset, event_type=values.unset, minutes=values.unset, reservation_sid=values.unset, start_date=values.unset, task_queue_sid=values.unset, task_sid=values.unset, worker_sid=values.unset, workflow_sid=values.unset, limit=nil, page_size=nil)
        @version.read(
            end_date,
            event_type,
            minutes,
            reservation_sid,
            start_date,
            task_queue_sid,
            task_sid,
            worker_sid,
            workflow_sid,
            limit,
            page_size
        ))
      end
      
      ##
      # Retrieve a single page of EventInstance records from the API.
      def page(self, end_date=values.unset, event_type=values.unset, minutes=values.unset, reservation_sid=values.unset, start_date=values.unset, task_queue_sid=values.unset, task_sid=values.unset, worker_sid=values.unset, workflow_sid=values.unset, page_token=None, page_number=None, page_size=None)
        params = values.of({
            EndDate: serialize.iso8601_datetime(end_date),
            EventType: event_type,
            Minutes: minutes,
            ReservationSid: reservation_sid,
            StartDate: serialize.iso8601_datetime(start_date),
            TaskQueueSid: task_queue_sid,
            TaskSid: task_sid,
            WorkerSid: worker_sid,
            WorkflowSid: workflow_sid,
            PageToken: page_token,
            Page: page_number,
            PageSize: page_size,
        })
        @version.page(
            self,
            EventInstance,
            @solution,
            'GET',
            @uri,
            params
        )
      end
      
      ##
      # Constructs a EventContext
      def get(sid)
        EventContext.new(@version, sid, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Taskrouter.V1.EventList>'
      end
    end
  end
end