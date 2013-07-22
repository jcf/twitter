require 'twitter/factory'
require 'twitter/geo/point'
require 'twitter/geo/polygon'

module Nunemaker::Twitter
  class GeoFactory < Nunemaker::Twitter::Factory

    # Construct a new geo object
    #
    # @param attrs [Hash]
    # @raise [ArgumentError] Error raised when supplied argument is missing a :type key.
    # @return [Nunemaker::Twitter::Geo]
    def self.new(attrs={})
      super(:type, Nunemaker::Twitter::Geo, attrs)
    end

  end
end
