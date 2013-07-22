require 'twitter/action/tweet'

module Nunemaker::Twitter
  module Action
    class Favorite < Nunemaker::Twitter::Action::Tweet
      attr_reader :target_objects

      # A collection containing the favorited tweet
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
