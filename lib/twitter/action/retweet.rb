require 'twitter/action/tweet'

module Nunemaker::Twitter
  module Action
    class Retweet < Nunemaker::Twitter::Action::Tweet

      # A collection of retweets
      #
      # @return [Array<Nunemaker::Twitter::Tweet>]
      def target_objects
        @target_objects = Array(@attrs[:target_objects]).map do |tweet|
          Nunemaker::Twitter::Tweet.new(tweet)
        end
      end

      # A collection containing the retweeted user
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
