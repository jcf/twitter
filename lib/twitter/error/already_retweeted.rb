require 'twitter/error/forbidden'

module Nunemaker::Twitter
  class Error
    # Raised when a Tweet has already been retweeted
    class AlreadyRetweeted < Nunemaker::Twitter::Error
      MESSAGE = "sharing is not permissible for this status (Share validations failed)"
    end
  end
end
