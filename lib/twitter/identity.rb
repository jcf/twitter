require 'twitter/base'

module Nunemaker::Twitter
  class Identity < Nunemaker::Twitter::Base

    # Initializes a new object
    #
    # @param attrs [Hash]
    # @raise [ArgumentError] Error raised when supplied argument is missing an :id key.
    # @return [Nunemaker::Twitter::Identity]
    def initialize(attrs={})
      super
      raise ArgumentError, "argument must have an :id key" unless id
    end

    # @param other [Nunemaker::Twitter::Identity]
    # @return [Boolean]
    def ==(other)
      super || attr_equal(:id, other) || attrs_equal(other)
    end

    # @return [Integer]
    def id
      @attrs[:id]
    end

  end
end
