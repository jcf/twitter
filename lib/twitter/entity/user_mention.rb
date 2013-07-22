require 'twitter/entity'

module Nunemaker::Twitter
  class Entity
    class UserMention < Nunemaker::Twitter::Entity
      attr_reader :id, :name, :screen_name
    end
  end
end
