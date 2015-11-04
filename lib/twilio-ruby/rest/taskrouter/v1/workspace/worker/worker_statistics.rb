##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class WorkerStatisticsList < ListResource
      ##
      # Initialize the WorkerStatisticsList
      def initialize(version, workspace_sid, worker_sid)
        super
        
        # Path Solution
        @solution = {
            workspace_sid: workspace_sid,
            worker_sid: worker_sid
        }
      end
      
      ##
      # Constructs a WorkerStatisticsContext
      def get
        WorkerStatisticsContext.new(@version, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Taskrouter.V1.WorkerStatisticsList>'
      end
    end
  end
end