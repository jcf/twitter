require 'twitter/base'
require 'twitter/creatable'

module Nunemaker::Twitter
  module Action
    class Mention < Nunemaker::Twitter::Base
      include Nunemaker::Twitter::Creatable
      attr_reader :max_position, :min_position

      # A collection of users who mentioned a user
      #
      # @return [Array<Nunemaker::Twitter::User>]
      def sources
        @sources = Array(@attrs[:sources]).map do |user|
          Nunemaker::Twitter::User.new(user)
        end
      end

      # The user who mentioned a user
      #
      # @return [Nunemaker::Twitter::User]
      def source
        @source = sources.first
      end

      # A collection of tweets that mention a user
      #
      # @return [Array<Nunemaker::Twitter::Tweet>]
      def target_objects
        @target_objects = Array(@attrs[:target_objects]).map do |tweet|
          Nunemaker::Twitter::Tweet.new(tweet)
        end
      end

      # A collection containing the mentioned user
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
