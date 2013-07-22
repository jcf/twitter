require 'twitter/action/tweet'

module Nunemaker::Twitter
  module Action
    class Reply < Nunemaker::Twitter::Action::Tweet

      # A collection of tweets that reply to a user
      #
      # @return [Array<Nunemaker::Twitter::Tweet>]
      def target_objects
        @target_objects = Array(@attrs[:target_objects]).map do |tweet|
          Nunemaker::Twitter::Tweet.new(tweet)
        end
      end

      # A collection that contains the replied-to tweets
      #
      # @return [Array<Nunemaker::Twitter::Tweet>]
      def targets
        @targets = Array(@attrs[:targets]).map do |tweet|
          Nunemaker::Twitter::Tweet.new(tweet)
        end
      end

    end
  end
end
