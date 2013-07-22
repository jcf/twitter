require 'twitter/base'
require 'twitter/creatable'

module Nunemaker::Twitter
  module Action
    class ListMemberAdded < Nunemaker::Twitter::Base
      include Nunemaker::Twitter::Creatable
      attr_reader :max_position, :min_position

      # A collection of users who added a user to a list
      #
      # @return [Array<Nunemaker::Twitter::User>]
      def sources
        @sources = Array(@attrs[:sources]).map do |user|
          Nunemaker::Twitter::User.new(user)
        end
      end

      # A collection of lists that were added to
      #
      # @return [Array<Nunemaker::Twitter::List>]
      def target_objects
        @target_objects = Array(@attrs[:target_objects]).map do |list|
          Nunemaker::Twitter::List.new(list)
        end
      end

      # A collection of users who were added to a list
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
