require 'twitter/creatable'
require 'twitter/identity'

module Nunemaker::Twitter
  class SavedSearch < Nunemaker::Twitter::Identity
    include Nunemaker::Twitter::Creatable
    attr_reader :name, :position, :query
  end
end
