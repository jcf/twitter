require 'twitter/base'

module Nunemaker::Twitter
  class ProfileBanner < Nunemaker::Twitter::Base

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
