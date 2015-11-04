##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class SmsMessageList < ListResource
      ##
      # Initialize the SmsMessageList
      def initialize(version, account_sid)
        super
        
        # Path Solution
        @solution = {
            account_sid: account_sid
        }
        @uri = "/Accounts/#{@solution[:account_sid]}/SMS/Messages.json"
      end
      
      ##
      # Create a new SmsMessageInstance
      def create(self, to, from, status_callback=values.unset, application_sid=values.unset, body=values.unset, media_url=values.unset)
        data = values.of({
            To: to,
            From: from,
            Body: body,
            MediaUrl: media_url,
            StatusCallback: status_callback,
            ApplicationSid: application_sid,
        })
        
        @version.create(
            SmsMessageInstance,
            @solution,
            'POST',
            @uri,
            {}
            data
        )
      end
      
      ##
      # Reads SmsMessageInstance records from the API as a list.
      def read(self, to=values.unset, from=values.unset, date_sent_before=values.unset, date_sent=values.unset, date_sent_after=values.unset, limit=nil, page_size=nil)
        @version.read(
            to,
            from,
            date_sent_before,
            date_sent,
            date_sent_after,
            limit,
            page_size
        ))
      end
      
      ##
      # Retrieve a single page of SmsMessageInstance records from the API.
      def page(self, to=values.unset, from=values.unset, date_sent_before=values.unset, date_sent=values.unset, date_sent_after=values.unset, page_token=None, page_number=None, page_size=None)
        params = values.of({
            To: to,
            From: from,
            DateSent<: serialize.iso8601_date(date_sent_before),
            DateSent: serialize.iso8601_date(date_sent),
            DateSent>: serialize.iso8601_date(date_sent_after),
            PageToken: page_token,
            Page: page_number,
            PageSize: page_size,
        })
        @version.page(
            self,
            SmsMessageInstance,
            @solution,
            'GET',
            @uri,
            params
        )
      end
      
      ##
      # Constructs a SmsMessageContext
      def get(sid)
        SmsMessageContext.new(@version, sid, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Api.V2010.SmsMessageList>'
      end
    end
  end
end