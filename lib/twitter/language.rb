require 'twitter/base'

module Nunemaker::Twitter
  class Language < Nunemaker::Twitter::Base
    attr_reader :code, :name, :status
  end
end
