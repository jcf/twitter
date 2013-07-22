require 'twitter/geo'

module Nunemaker::Twitter
  class Geo
    class Point < Nunemaker::Twitter::Geo

      # @return [Integer]
      def latitude
        coordinates[0]
      end
      alias lat latitude

      # @return [Integer]
      def longitude
        coordinates[1]
      end
      alias long longitude
      alias lng longitude

    end
  end
end
