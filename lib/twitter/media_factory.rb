require 'twitter/factory'
require 'twitter/media/photo'

module Nunemaker::Twitter
  class MediaFactory < Nunemaker::Twitter::Factory

    # Construct a new media object
    #
    # @param attrs [Hash]
    # @raise [ArgumentError] Error raised when supplied argument is missing a :type key.
    # @return [Nunemaker::Twitter::Media]
    def self.new(attrs={})
      super(:type, Nunemaker::Twitter::Media, attrs)
    end

  end
end
