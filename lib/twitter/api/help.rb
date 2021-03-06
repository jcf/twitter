require 'twitter/api/utils'
require 'twitter/configuration'
require 'twitter/language'

module Nunemaker::Twitter
  module API
    module Help
      include Nunemaker::Twitter::API::Utils

      # Returns the current configuration used by Nunemaker::Twitter
      #
      # @see https://dev.twitter.com/docs/api/1.1/get/help/configuration
      # @rate_limited Yes
      # @authentication Requires user context
      # @raise [Nunemaker::Twitter::Error::Unauthorized] Error raised when supplied user credentials are not valid.
      # @return [Nunemaker::Twitter::Configuration] Nunemaker::Twitter's configuration.
      # @example Return the current configuration used by Nunemaker::Twitter
      #   Nunemaker::Twitter.configuration
      def configuration(options={})
        object_from_response(Nunemaker::Twitter::Configuration, :get, "/1.1/help/configuration.json", options)
      end

      # Returns the list of languages supported by Nunemaker::Twitter
      #
      # @see https://dev.twitter.com/docs/api/1.1/get/help/languages
      # @rate_limited Yes
      # @authentication Requires user context
      # @raise [Nunemaker::Twitter::Error::Unauthorized] Error raised when supplied user credentials are not valid.
      # @return [Array<Nunemaker::Twitter::Language>]
      # @example Return the list of languages Nunemaker::Twitter supports
      #   Nunemaker::Twitter.languages
      def languages(options={})
        objects_from_response(Nunemaker::Twitter::Language, :get, "/1.1/help/languages.json", options)
      end

      # Returns {https://twitter.com/privacy Nunemaker::Twitter's Privacy Policy}
      #
      # @see https://dev.twitter.com/docs/api/1.1/get/help/privacy
      # @rate_limited Yes
      # @authentication Requires user context
      # @raise [Nunemaker::Twitter::Error::Unauthorized] Error raised when supplied user credentials are not valid.
      # @return [String]
      # @example Return {https://twitter.com/privacy Nunemaker::Twitter's Privacy Policy}
      #   Nunemaker::Twitter.privacy
      def privacy(options={})
        get("/1.1/help/privacy.json", options)[:body][:privacy]
      end

      # Returns {https://twitter.com/tos Nunemaker::Twitter's Terms of Service}
      #
      # @see https://dev.twitter.com/docs/api/1.1/get/help/tos
      # @rate_limited Yes
      # @authentication Requires user context
      # @raise [Nunemaker::Twitter::Error::Unauthorized] Error raised when supplied user credentials are not valid.
      # @return [String]
      # @example Return {https://twitter.com/tos Nunemaker::Twitter's Terms of Service}
      #   Nunemaker::Twitter.tos
      def tos(options={})
        get("/1.1/help/tos.json", options)[:body][:tos]
      end

    end
  end
end
