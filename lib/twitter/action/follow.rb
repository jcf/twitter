require 'twitter/base'
require 'twitter/creatable'

module Nunemaker::Twitter
  module Action
    class Follow < Nunemaker::Twitter::Base
      include Nunemaker::Twitter::Creatable
      attr_reader :max_position, :min_position, :target_objects

      # A collection of users who followed a user
      #
      # @return [Array<Nunemaker::Twitter::User>]
      def sources
        @sources = Array(@attrs[:sources]).map do |user|
          Nunemaker::Twitter::User.new(user)
        end
      end

      # A collection containing the followed user
      #
      # @return [Array<Nunemaker::Twitter::User>]
      def targets
        @targets = Array(@attrs[:targets]).map do |user|
          Nunemaker::Twitter::User.new(user)
        end
      end

    end
  end
end
