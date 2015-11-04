##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class ApplicationList < ListResource
      ##
      # Initialize the ApplicationList
      def initialize(version, account_sid)
        super
        
        # Path Solution
        @solution = {
            account_sid: account_sid
        }
        @uri = "/Accounts/#{@solution[:account_sid]}/Applications.json"
      end
      
      ##
      # Create a new ApplicationInstance
      def create(self, friendly_name, api_version=values.unset, voice_url=values.unset, voice_method=values.unset, voice_fallback_url=values.unset, voice_fallback_method=values.unset, status_callback=values.unset, status_callback_method=values.unset, voice_caller_id_lookup=values.unset, sms_url=values.unset, sms_method=values.unset, sms_fallback_url=values.unset, sms_fallback_method=values.unset, sms_status_callback=values.unset, message_status_callback=values.unset)
        data = values.of({
            FriendlyName: friendly_name,
            ApiVersion: api_version,
            VoiceUrl: voice_url,
            VoiceMethod: voice_method,
            VoiceFallbackUrl: voice_fallback_url,
            VoiceFallbackMethod: voice_fallback_method,
            StatusCallback: status_callback,
            StatusCallbackMethod: status_callback_method,
            VoiceCallerIdLookup: voice_caller_id_lookup,
            SmsUrl: sms_url,
            SmsMethod: sms_method,
            SmsFallbackUrl: sms_fallback_url,
            SmsFallbackMethod: sms_fallback_method,
            SmsStatusCallback: sms_status_callback,
            MessageStatusCallback: message_status_callback,
        })
        
        @version.create(
            ApplicationInstance,
            @solution,
            'POST',
            @uri,
            {}
            data
        )
      end
      
      ##
      # Reads ApplicationInstance records from the API as a list.
      def read(self, friendly_name=values.unset, limit=nil, page_size=nil)
        @version.read(
            friendly_name,
            limit,
            page_size
        ))
      end
      
      ##
      # Retrieve a single page of ApplicationInstance records from the API.
      def page(self, friendly_name=values.unset, page_token=None, page_number=None, page_size=None)
        params = values.of({
            FriendlyName: friendly_name,
            PageToken: page_token,
            Page: page_number,
            PageSize: page_size,
        })
        @version.page(
            self,
            ApplicationInstance,
            @solution,
            'GET',
            @uri,
            params
        )
      end
      
      ##
      # Constructs a ApplicationContext
      def get(sid)
        ApplicationContext.new(@version, sid, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Api.V2010.ApplicationList>'
      end
    end
  end
end