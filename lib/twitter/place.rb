require 'twitter/identity'

module Nunemaker::Twitter
  class Place < Nunemaker::Twitter::Identity
    attr_reader :attributes, :country, :full_name, :name, :url, :woeid
    alias woe_id woeid

    # @return [Nunemaker::Twitter::Geo]
    def bounding_box
      @bounding_box ||= new_or_null_object(Nunemaker::Twitter::GeoFactory, :bounding_box)
    end

    # @return [String]
    def country_code
      @country_code ||= @attrs[:country_code] || @attrs[:countryCode]
    end

    # @return [Integer]
    def parent_id
      @parent_id ||= @attrs[:parentid]
    end

    # @return [String]
    def place_type
      @place_type ||= @attrs[:place_type] || @attrs[:placeType] && @attrs[:placeType][:name]
    end

    def id
      @attrs[:id] || @attrs[:woeid]
    end

  end
end
