require 'twitter/action/favorite'
require 'twitter/action/follow'
require 'twitter/action/list_member_added'
require 'twitter/action/mention'
require 'twitter/action/reply'
require 'twitter/action/retweet'
require 'twitter/factory'

module Nunemaker::Twitter
  class ActionFactory < Nunemaker::Twitter::Factory

    # Construct a new action object
    #
    # @param attrs [Hash]
    # @raise [ArgumentError] Error raised when supplied argument is missing an :action key.
    # @return [Nunemaker::Twitter::Action]
    def self.new(attrs={})
      super(:action, Nunemaker::Twitter::Action, attrs)
    end

  end
end
