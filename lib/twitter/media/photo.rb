require 'twitter/identity'

module Nunemaker::Twitter
  module Media
    class Photo < Nunemaker::Twitter::Identity
      attr_reader :display_url, :expanded_url, :indices, :media_url,
        :media_url_https, :url

      # Returns an array of photo sizes
      #
      # @return [Array<Nunemaker::Twitter::Size>]
      def sizes
        @sizes ||= Array(@attrs[:sizes]).each_with_object({}) do |(key, value), object|
          object[key] = Nunemaker::Twitter::Size.new(value)
        end
      end

    end
  end
end
