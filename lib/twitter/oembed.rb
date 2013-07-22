require 'twitter/base'

module Nunemaker::Twitter
  class OEmbed < Nunemaker::Twitter::Base
    attr_reader :author_name, :author_url, :cache_age, :height, :html,
      :provider_name, :provider_url, :type, :url, :version, :width
  end
end
