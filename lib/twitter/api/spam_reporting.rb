require 'twitter/api/utils'
require 'twitter/user'

module Nunemaker::Twitter
  module API
    module SpamReporting
      include Nunemaker::Twitter::API::Utils

      # The users specified are blocked by the authenticated user and reported as spammers
      #
      # @see https://dev.twitter.com/docs/api/1.1/post/users/report_spam
      # @rate_limited Yes
      # @authentication Requires user context
      # @raise [Nunemaker::Twitter::Error::Unauthorized] Error raised when supplied user credentials are not valid.
      # @return [Array<Nunemaker::Twitter::User>] The reported users.
      # @overload report_spam(*users)
      #   @param users [Enumerable<Integer, String, Nunemaker::Twitter::User>] A collection of Nunemaker::Twitter user IDs, screen names, or objects.
      #   @example Report @spam for spam
      #     Nunemaker::Twitter.report_spam("spam")
      #     Nunemaker::Twitter.report_spam(14589771) # Same as above
      # @overload report_spam(*users, options)
      #   @param users [Enumerable<Integer, String, Nunemaker::Twitter::User>] A collection of Nunemaker::Twitter user IDs, screen names, or objects.
      #   @param options [Hash] A customizable set of options.
      def report_spam(*args)
        threaded_user_objects_from_response(:post, "/1.1/users/report_spam.json", args)
      end

    end
  end
end
