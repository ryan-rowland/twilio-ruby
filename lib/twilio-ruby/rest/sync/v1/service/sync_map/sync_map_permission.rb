##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Sync < Domain
      class V1 < Version
        class ServiceContext < InstanceContext
          class SyncMapContext < InstanceContext
            class SyncMapPermissionList < ListResource
              ##
              # Initialize the SyncMapPermissionList
              # @param [Version] version Version that contains the resource
              # @param [String] service_sid The unique SID identifier of the Sync Service
              #   Instance.
              # @param [String] map_sid The unique SID identifier of the Sync Map to which the
              #   Permission applies.
              # @return [SyncMapPermissionList] SyncMapPermissionList
              def initialize(version, service_sid: nil, map_sid: nil)
                super(version)

                # Path Solution
                @solution = {
                    service_sid: service_sid,
                    map_sid: map_sid
                }
                @uri = "/Services/#{@solution[:service_sid]}/Maps/#{@solution[:map_sid]}/Permissions"
              end

              ##
              # Lists SyncMapPermissionInstance records from the API as a list.
              # Unlike stream(), this operation is eager and will load `limit` records into
              # memory before returning.
              # @param [Integer] limit Upper limit for the number of records to return. stream()
              #                   guarantees to never return more than limit.  Default is no limit
              # @param [Integer] page_size Number of records to fetch per request, when not set will                      use
              #  the default value of 50 records.  If no page_size is                      defined
              #  but a limit is defined, stream() will attempt to read                      the
              #  limit with the most efficient page size,                      i.e. min(limit, 1000)
              # @return [Array] Array of up to limit results
              def list(limit: nil, page_size: nil)
                self.stream(
                    limit: limit,
                    page_size: page_size
                ).entries
              end

              ##
              # Streams SyncMapPermissionInstance records from the API as an Enumerable.
              # This operation lazily loads records as efficiently as possible until the limit
              # is reached.
              # @param [Integer] limit Upper limit for the number of records to return.                  stream()
              #  guarantees to never return more than limit.                  Default is no limit
              # @param [Integer] page_size Number of records to fetch per request, when                      not set will use
              #  the default value of 50 records.                      If no page_size is defined
              #                       but a limit is defined, stream() will attempt to                      read the
              #  limit with the most efficient page size,                       i.e. min(limit, 1000)
              # @return [Enumerable] Enumerable that will yield up to limit results
              def stream(limit: nil, page_size: nil)
                limits = @version.read_limits(limit, page_size)

                page = self.page(
                    page_size: limits[:page_size],
                )

                @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
              end

              ##
              # When passed a block, yields SyncMapPermissionInstance records from the API.
              # This operation lazily loads records as efficiently as possible until the limit
              # is reached.
              # @param [Integer] limit Upper limit for the number of records to return.                  stream()
              #  guarantees to never return more than limit.                  Default is no limit
              # @param [Integer] page_size Number of records to fetch per request, when                       not set will use
              #  the default value of 50 records.                      If no page_size is defined
              #                       but a limit is defined, stream() will attempt to read the
              #                       limit with the most efficient page size, i.e. min(limit, 1000)
              def each
                limits = @version.read_limits

                page = self.page(
                    page_size: limits[:page_size],
                )

                @version.stream(page,
                                limit: limits[:limit],
                                page_limit: limits[:page_limit]).each {|x| yield x}
              end

              ##
              # Retrieve a single page of SyncMapPermissionInstance records from the API.
              # Request is executed immediately.
              # @param [String] page_token PageToken provided by the API
              # @param [Integer] page_number Page Number, this value is simply for client state
              # @param [Integer] page_size Number of records to return, defaults to 50
              # @return [Page] Page of SyncMapPermissionInstance
              def page(page_token: nil, page_number: nil, page_size: nil)
                params = {
                    'PageToken' => page_token,
                    'Page' => page_number,
                    'PageSize' => page_size,
                }
                response = @version.page(
                    'GET',
                    @uri,
                    params
                )
                return SyncMapPermissionPage.new(@version, response, @solution)
              end

              ##
              # Retrieve a single page of SyncMapPermissionInstance records from the API.
              # Request is executed immediately.
              # @param [String] target_url API-generated URL for the requested results page
              # @return [Page] Page of SyncMapPermissionInstance
              def get_page(target_url: nil)
                response = @version.domain.request(
                    'GET',
                    target_url
                )
                return SyncMapPermissionPage.new(@version, response, @solution)
              end

              ##
              # Provide a user friendly representation
              def to_s
                '#<Twilio.Sync.V1.SyncMapPermissionList>'
              end
            end

            class SyncMapPermissionPage < Page
              ##
              # Initialize the SyncMapPermissionPage
              # @param [Version] version Version that contains the resource
              # @param [Response] response Response from the API
              # @param [Hash] solution Path solution for the resource
              # @param [String] service_sid The unique SID identifier of the Sync Service
              #   Instance.
              # @param [String] map_sid The unique SID identifier of the Sync Map to which the
              #   Permission applies.
              # @return [SyncMapPermissionPage] SyncMapPermissionPage
              def initialize(version, response, solution)
                super(version, response)

                # Path Solution
                @solution = solution
              end

              ##
              # Build an instance of SyncMapPermissionInstance
              # @param [Hash] payload Payload response from the API
              # @return [SyncMapPermissionInstance] SyncMapPermissionInstance
              def get_instance(payload)
                return SyncMapPermissionInstance.new(
                    @version,
                    payload,
                    service_sid: @solution[:service_sid],
                    map_sid: @solution[:map_sid],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '<Twilio.Sync.V1.SyncMapPermissionPage>'
              end
            end

            class SyncMapPermissionContext < InstanceContext
              ##
              # Initialize the SyncMapPermissionContext
              # @param [Version] version Version that contains the resource
              # @param [String] service_sid The service_sid
              # @param [String] map_sid Identifier of the Sync Map. Either a SID or a unique
              #   name.
              # @param [String] identity Arbitrary string identifier representing a user
              #   associated with an FPA token, assigned by the developer.
              # @return [SyncMapPermissionContext] SyncMapPermissionContext
              def initialize(version, service_sid, map_sid, identity)
                super(version)

                # Path Solution
                @solution = {
                    service_sid: service_sid,
                    map_sid: map_sid,
                    identity: identity,
                }
                @uri = "/Services/#{@solution[:service_sid]}/Maps/#{@solution[:map_sid]}/Permissions/#{@solution[:identity]}"
              end

              ##
              # Fetch a SyncMapPermissionInstance
              # @return [SyncMapPermissionInstance] Fetched SyncMapPermissionInstance
              def fetch
                params = {}

                payload = @version.fetch(
                    'GET',
                    @uri,
                    params,
                )

                return SyncMapPermissionInstance.new(
                    @version,
                    payload,
                    service_sid: @solution[:service_sid],
                    map_sid: @solution[:map_sid],
                    identity: @solution[:identity],
                )
              end

              ##
              # Deletes the SyncMapPermissionInstance
              # @return [Boolean] true if delete succeeds, true otherwise
              def delete
                return @version.delete('delete', @uri)
              end

              ##
              # Update the SyncMapPermissionInstance
              # @param [Boolean] read Boolean flag specifying whether the identity can read the
              #   Sync Map.
              # @param [Boolean] write Boolean flag specifying whether the identity can create,
              #   update and delete Items of the Sync Map.
              # @param [Boolean] manage Boolean flag specifying whether the identity can delete
              #   the Sync Map.
              # @return [SyncMapPermissionInstance] Updated SyncMapPermissionInstance
              def update(read: nil, write: nil, manage: nil)
                data = {
                    'Read' => read,
                    'Write' => write,
                    'Manage' => manage,
                }

                payload = @version.update(
                    'POST',
                    @uri,
                    data: data,
                )

                return SyncMapPermissionInstance.new(
                    @version,
                    payload,
                    service_sid: @solution[:service_sid],
                    map_sid: @solution[:map_sid],
                    identity: @solution[:identity],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                "#<Twilio.Sync.V1.SyncMapPermissionContext #{context}>"
              end
            end

            class SyncMapPermissionInstance < InstanceResource
              ##
              # Initialize the SyncMapPermissionInstance
              # @param [Version] version Version that contains the resource
              # @param [Hash] payload payload that contains response from Twilio
              # @param [String] service_sid The unique SID identifier of the Sync Service
              #   Instance.
              # @param [String] map_sid The unique SID identifier of the Sync Map to which the
              #   Permission applies.
              # @param [String] identity Arbitrary string identifier representing a user
              #   associated with an FPA token, assigned by the developer.
              # @return [SyncMapPermissionInstance] SyncMapPermissionInstance
              def initialize(version, payload, service_sid: nil, map_sid: nil, identity: nil)
                super(version)

                # Marshaled Properties
                @properties = {
                    'account_sid' => payload['account_sid'],
                    'service_sid' => payload['service_sid'],
                    'map_sid' => payload['map_sid'],
                    'identity' => payload['identity'],
                    'read' => payload['read'],
                    'write' => payload['write'],
                    'manage' => payload['manage'],
                    'url' => payload['url'],
                }

                # Context
                @instance_context = nil
                @params = {
                    'service_sid' => service_sid,
                    'map_sid' => map_sid,
                    'identity' => identity || @properties['identity'],
                }
              end

              ##
              # Generate an instance context for the instance, the context is capable of
              # performing various actions.  All instance actions are proxied to the context
              # @param [Version] version Version that contains the resource
              # @return [SyncMapPermissionContext] SyncMapPermissionContext for this SyncMapPermissionInstance
              def context
                unless @instance_context
                  @instance_context = SyncMapPermissionContext.new(
                      @version,
                      @params['service_sid'],
                      @params['map_sid'],
                      @params['identity'],
                  )
                end
                @instance_context
              end

              def account_sid
                @properties['account_sid']
              end

              def service_sid
                @properties['service_sid']
              end

              def map_sid
                @properties['map_sid']
              end

              def identity
                @properties['identity']
              end

              def read
                @properties['read']
              end

              def write
                @properties['write']
              end

              def manage
                @properties['manage']
              end

              def url
                @properties['url']
              end

              ##
              # Fetch a SyncMapPermissionInstance
              # @return [SyncMapPermissionInstance] Fetched SyncMapPermissionInstance
              def fetch
                context.fetch
              end

              ##
              # Deletes the SyncMapPermissionInstance
              # @return [Boolean] true if delete succeeds, true otherwise
              def delete
                context.delete
              end

              ##
              # Update the SyncMapPermissionInstance
              # @param [Boolean] read Boolean flag specifying whether the identity can read the
              #   Sync Map.
              # @param [Boolean] write Boolean flag specifying whether the identity can create,
              #   update and delete Items of the Sync Map.
              # @param [Boolean] manage Boolean flag specifying whether the identity can delete
              #   the Sync Map.
              # @return [SyncMapPermissionInstance] Updated SyncMapPermissionInstance
              def update(read: nil, write: nil, manage: nil)
                context.update(
                    read: read,
                    write: write,
                    manage: manage,
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                "<Twilio.Sync.V1.SyncMapPermissionInstance #{values}>"
              end
            end
          end
        end
      end
    end
  end
end