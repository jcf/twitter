require 'twitter/entity'

module Nunemaker::Twitter
  class Entity
    class Symbol < Nunemaker::Twitter::Entity
      attr_reader :text
    end
  end
end
