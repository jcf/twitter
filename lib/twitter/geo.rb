require 'twitter/base'

module Nunemaker::Twitter
  class Geo < Nunemaker::Twitter::Base
    attr_reader :coordinates
    alias coords coordinates

    # @param other [Nunemaker::Twitter::Geo]
    # @return [Boolean]
    def ==(other)
      super || attr_equal(:coordinates, other) || attrs_equal(other)
    end

  end
end
