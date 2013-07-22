require 'twitter/base'

module Nunemaker::Twitter
  class Metadata < Nunemaker::Twitter::Base
    attr_reader :result_type
  end
end
