##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class Trunking
      class V1 < Version
        ##
        # Initialize the V1 version of Trunking
        def initialize(domain)
          super
          @version = 'v1'
          @trunks = nil
        end
        
        def trunks
          @trunks ||= TrunkList.new self
        end
        
        ##
        # Provide a user friendly representation
        def to_s
          #<Twilio::REST::Trunking::V1>
        end
      end
    end
  end
end