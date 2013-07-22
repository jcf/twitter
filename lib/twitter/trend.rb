require 'twitter/base'

module Nunemaker::Twitter
  class Trend < Nunemaker::Twitter::Base
    attr_reader :events, :name, :promoted_content, :query, :url

    # @param other [Nunemaker::Twitter::Trend]
    # @return [Boolean]
    def ==(other)
      super || attr_equal(:name, other) || attrs_equal(other)
    end

  end
end
