require 'twitter/base'
require 'twitter/creatable'

module Nunemaker::Twitter
  module Action
    class Tweet < Nunemaker::Twitter::Base
      include Nunemaker::Twitter::Creatable
      attr_reader :max_position, :min_position

      # @return [Array<Nunemaker::Twitter::User>]
      def sources
        @sources = Array(@attrs[:sources]).map do |user|
          Nunemaker::Twitter::User.new(user)
        end
      end

    end
    Status = Tweet
  end
end
