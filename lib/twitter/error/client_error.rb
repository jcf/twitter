require 'twitter/error'

module Nunemaker::Twitter
  class Error
    # Raised when Nunemaker::Twitter returns a 4xx HTTP status code or there's an error in Faraday
    class ClientError < Nunemaker::Twitter::Error

      # Create a new error from an HTTP environment
      #
      # @param response [Hash]
      # @return [Nunemaker::Twitter::Error]
      def self.from_response(response={})
        new(parse_error(response[:body]), response[:response_headers])
      end

    private

      def self.parse_error(body)
        if body.nil?
          ''
        elsif body[:error]
          body[:error]
        elsif body[:errors]
          first = Array(body[:errors]).first
          if first.is_a?(Hash)
            first[:message].chomp
          else
            first.chomp
          end
        end
      end

    end
  end
end
