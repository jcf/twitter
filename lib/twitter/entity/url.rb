require 'twitter/entity'

module Nunemaker::Twitter
  class Entity
    class Url < Nunemaker::Twitter::Entity
      attr_reader :display_url, :expanded_url, :url
    end
  end
end
