##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    ##
    # A client for accessing the Twilio API.
    class Client
      ##
      # Initializes the Twilio Client
      def initialize(account_sid, auth_token, http_client=Twilio::HTTP::Client.new)
        @account_sid = account_sid
        @auth_token = auth_token
        @auth = [@account_sid, @auth_token]
        @http_client = http_client
        
        # Domains
        @api = nil
        @conversations = nil
        @lookups = nil
        @monitor = nil
        @pricing = nil
        @taskrouter = nil
        @trunking = nil
      end
      
      ##
      # Makes a request to the Twilio API using the configured http client
      # Authentication information is automatically added if none is provided
      def request(host, port, method, uri, params={}, data={}, headers={}, auth=nil, timeout=nil)
        auth ||= @auth
        
        headers['User-Agent'] = "twilio-ruby/#{Twilio::VERSION}" +
                                " (#{RUBY_ENGINE}/#{RUBY_PLATFORM}" +
                                " #{RUBY_VERSION}-p#{RUBY_PATCHLEVEL})"
        headers['Accept-Charset'] = 'utf-8'
        
        if method == 'POST' && !headers.contains?('Content-Type')
          headers['Content-Type'] = 'application/x-www-form-urlencoded'
        end
        
        unless headers.contains?('Accept')
          headers['Accept'] = 'application/json'
        end
        
        @http_client.request(
          host,
          port,
          method,
          uri,
          params,
          data,
          headers,
          auth,
          timeout
        )
      end
      
      ##
      # Access the Api Twilio Domain
      def api
        @api ||= Api.new self
      end
      
      ##
      # Access the Conversations Twilio Domain
      def conversations
        @conversations ||= Conversations.new self
      end
      
      ##
      # Access the Lookups Twilio Domain
      def lookups
        @lookups ||= Lookups.new self
      end
      
      ##
      # Access the Monitor Twilio Domain
      def monitor
        @monitor ||= Monitor.new self
      end
      
      ##
      # Access the Pricing Twilio Domain
      def pricing
        @pricing ||= Pricing.new self
      end
      
      ##
      # Access the Taskrouter Twilio Domain
      def taskrouter
        @taskrouter ||= Taskrouter.new self
      end
      
      ##
      # Access the Trunking Twilio Domain
      def trunking
        @trunking ||= Trunking.new self
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        "#<Twilio::REST::Client #{@account_sid}>"
      end
    end
  end
end