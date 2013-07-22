require 'twitter/api/utils'
require 'twitter/place'
require 'twitter/trend'

module Nunemaker::Twitter
  module API
    module Trends
      include Nunemaker::Twitter::API::Utils

      # Returns the top 10 trending topics for a specific WOEID
      #
      # @see https://dev.twitter.com/docs/api/1.1/get/trends/place
      # @rate_limited Yes
      # @authentication Requires user context
      # @raise [Nunemaker::Twitter::Error::Unauthorized] Error raised when supplied user credentials are not valid.
      # @param id [Integer] The {https://developer.yahoo.com/geo/geoplanet Yahoo! Where On Earth ID} of the location to return trending information for. WOEIDs can be retrieved by calling {Nunemaker::Twitter::API::Trends#trend_locations}. Global information is available by using 1 as the WOEID.
      # @param options [Hash] A customizable set of options.
      # @option options [String] :exclude Setting this equal to 'hashtags' will remove all hashtags from the trends list.
      # @return [Array<Nunemaker::Twitter::Trend>]
      # @example Return the top 10 trending topics for San Francisco
      #   Nunemaker::Twitter.trends(2487956)
      def trends(id=1, options={})
        options[:id] = id
        response = get("/1.1/trends/place.json", options)
        objects_from_array(Nunemaker::Twitter::Trend, response[:body].first[:trends])
      end
      alias local_trends trends
      alias trends_place trends

      # Returns the locations that Nunemaker::Twitter has trending topic information for
      #
      # @see https://dev.twitter.com/docs/api/1.1/get/trends/available
      # @rate_limited Yes
      # @authentication Requires user context
      # @raise [Nunemaker::Twitter::Error::Unauthorized] Error raised when supplied user credentials are not valid.
      # @param options [Hash] A customizable set of options.
      # @return [Array<Nunemaker::Twitter::Place>]
      # @example Return the locations that Nunemaker::Twitter has trending topic information for
      #   Nunemaker::Twitter.trends_available
      def trends_available(options={})
        objects_from_response(Nunemaker::Twitter::Place, :get, "/1.1/trends/available.json", options)
      end
      alias trend_locations trends_available

      # Returns the locations that Nunemaker::Twitter has trending topic information for, closest to a specified location.
      #
      # @see https://dev.twitter.com/docs/api/1.1/get/trends/closest
      # @rate_limited Yes
      # @authentication Requires user context
      # @raise [Nunemaker::Twitter::Error::Unauthorized] Error raised when supplied user credentials are not valid.
      # @param options [Hash] A customizable set of options.
      # @option options [Float] :lat If provided with a :long option the available trend locations will be sorted by distance, nearest to furthest, to the co-ordinate pair. The valid ranges for latitude are -90.0 to +90.0 (North is positive) inclusive.
      # @option options [Float] :long If provided with a :lat option the available trend locations will be sorted by distance, nearest to furthest, to the co-ordinate pair. The valid ranges for longitude are -180.0 to +180.0 (East is positive) inclusive.
      # @return [Array<Nunemaker::Twitter::Place>]
      # @example Return the locations that Nunemaker::Twitter has trending topic information for
      #   Nunemaker::Twitter.trends_closest
      def trends_closest(options={})
        objects_from_response(Nunemaker::Twitter::Place, :get, "/1.1/trends/closest.json", options)
      end

    end
  end
end
