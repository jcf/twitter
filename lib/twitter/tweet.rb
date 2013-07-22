require 'forwardable'
require 'twitter/creatable'
require 'twitter/identity'

module Nunemaker::Twitter
  class Tweet < Nunemaker::Twitter::Identity
    extend Forwardable
    include Nunemaker::Twitter::Creatable
    attr_reader :favorite_count, :favorited, :from_user_id, :from_user_name,
      :in_reply_to_screen_name, :in_reply_to_attrs_id, :in_reply_to_status_id,
      :in_reply_to_user_id, :lang, :retweet_count, :retweeted, :source, :text,
      :to_user, :to_user_id, :to_user_name, :truncated
    alias favorites_count favorite_count
    alias favourite_count favorite_count
    alias favourites_count favorite_count
    alias favoriters_count favorite_count
    alias favouriters_count favorite_count
    alias favourited favorited
    alias favourited? favorited?
    alias in_reply_to_tweet_id in_reply_to_status_id
    alias retweeters_count retweet_count
    def_delegators :user, :profile_image_url, :profile_image_url_https

    # @return [Boolean]
    def entities?
      !@attrs[:entities].nil?
    end

    # @return [String]
    def from_user
      @attrs[:from_user] || user && user.screen_name
    end

    def filter_level
      @attrs[:filter_level] || "none"
    end

    # @return [String]
    # @note May be > 140 characters.
    def full_text
      if retweeted_status?
        prefix = text[/\A(RT @[a-z0-9_]{1,20}: )/i, 1]
        [prefix, retweeted_status.text].compact.join
      else
        text
      end
    end

    # @return [Nunemaker::Twitter::Geo]
    def geo
      @geo ||= new_or_null_object(Nunemaker::Twitter::GeoFactory, :geo)
    end

    # @note Must include entities in your request for this method to work
    # @return [Array<Nunemaker::Twitter::Entity::Hashtag>]
    def hashtags
      @hashtags ||= entities(Nunemaker::Twitter::Entity::Hashtag, :hashtags)
    end

    # @note Must include entities in your request for this method to work
    # @return [Array<Nunemaker::Twitter::Media>]
    def media
      @media ||= entities(Nunemaker::Twitter::MediaFactory, :media)
    end

    # @return [Nunemaker::Twitter::Metadata]
    def metadata
      @metadata ||= new_or_null_object(Nunemaker::Twitter::Metadata, :metadata)
    end

    # @return [Nunemaker::Twitter::Place]
    def place
      @place ||= new_or_null_object(Nunemaker::Twitter::Place, :place)
    end

    # @return [Boolean]
    def reply?
      !!in_reply_to_status_id
    end

    # @return [Boolean]
    def retweeted_status?
      !!retweeted_status
    end
    alias retweet? retweeted_status?
    alias retweeted? retweeted_status?
    alias retweeted_tweet? retweeted_status?

    # If this Tweet is a retweet, the original Tweet is available here.
    #
    # @return [Nunemaker::Twitter::Tweet]
    def retweeted_status
      @retweeted_status ||= new_or_null_object(self.class, :retweeted_status)
    end
    alias retweet retweeted_status
    alias retweeted_tweet retweeted_status

    # @note Must include entities in your request for this method to work
    # @return [Array<Nunemaker::Twitter::Entity::Symbol>]
    def symbols
      @symbols ||= entities(Nunemaker::Twitter::Entity::Symbol, :symbols)
    end

    # @note Must include entities in your request for this method to work
    # @return [Array<Nunemaker::Twitter::Entity::Url>]
    def urls
      @urls ||= entities(Nunemaker::Twitter::Entity::Url, :urls)
    end

    # @return [Nunemaker::Twitter::User]
    def user
      @user ||= new_without_self(Nunemaker::Twitter::User, :user, :status)
    end

    # @note Must include entities in your request for this method to work
    # @return [Array<Nunemaker::Twitter::Entity::UserMention>]
    def user_mentions
      @user_mentions ||= entities(Nunemaker::Twitter::Entity::UserMention, :user_mentions)
    end

    def user?
      !@attrs[:user].nil?
    end

  private

    # @param klass [Class]
    # @param key [Symbol]
    def entities(klass, key)
      if entities?
        Array(@attrs[:entities][key.to_sym]).map do |entity|
          klass.new(entity)
        end
      else
        warn "#{Kernel.caller.first}: To get #{key.to_s.tr('_', ' ')}, you must pass `:include_entities => true` when requesting the #{self.class.name}."
        []
      end
    end

  end

  Status = Tweet
end
