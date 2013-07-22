require 'twitter/identity'

module Nunemaker::Twitter
  class BasicUser < Nunemaker::Twitter::Identity
    attr_reader :following, :screen_name
    alias handle screen_name
    alias username screen_name
    alias user_name screen_name
  end
end
