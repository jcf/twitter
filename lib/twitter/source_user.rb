require 'twitter/basic_user'

module Nunemaker::Twitter
  class SourceUser < Nunemaker::Twitter::BasicUser
    attr_reader :all_replies, :blocking, :can_dm, :followed_by, :marked_spam,
      :notifications_enabled, :want_retweets
  end
end
