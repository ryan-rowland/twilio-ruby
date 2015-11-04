##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class WorkersStatisticsList < ListResource
      ##
      # Initialize the WorkersStatisticsList
      def initialize(version, workspace_sid)
        super
        
        # Path Solution
        @solution = {
            workspace_sid: workspace_sid
        }
      end
      
      ##
      # Constructs a WorkersStatisticsContext
      def get
        WorkersStatisticsContext.new(@version, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Taskrouter.V1.WorkersStatisticsList>'
      end
    end
  end
end