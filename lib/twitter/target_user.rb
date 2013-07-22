require 'twitter/basic_user'

module Nunemaker::Twitter
  class TargetUser < Nunemaker::Twitter::BasicUser
    attr_reader :followed_by
  end
end
