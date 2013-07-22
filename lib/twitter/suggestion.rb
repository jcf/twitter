require 'twitter/base'

module Nunemaker::Twitter
  class Suggestion < Nunemaker::Twitter::Base
    attr_reader :name, :size, :slug

    # @param other [Nunemaker::Twitter::Suggestion]
    # @return [Boolean]
    def ==(other)
      super || attr_equal(:slug, other) || attrs_equal(other)
    end

    # @return [Array<Nunemaker::Twitter::User>]
    def users
      @users ||= Array(@attrs[:users]).map do |user|
        Nunemaker::Twitter::User.new(user)
      end
    end

  end
end
