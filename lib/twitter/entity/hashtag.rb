require 'twitter/entity'

module Nunemaker::Twitter
  class Entity
    class Hashtag < Nunemaker::Twitter::Entity
      attr_reader :text
    end
  end
end
