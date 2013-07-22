require 'twitter/base'

module Nunemaker::Twitter
  class Token < Nunemaker::Twitter::Base
    attr_reader :token_type, :access_token
  end
end
