require 'twitter/error/forbidden'

module Nunemaker::Twitter
  class Error
    # Raised when a Tweet has already been favorited
    class AlreadyFavorited < Nunemaker::Twitter::Error
      MESSAGE = "You have already favorited this status"
    end
  end
end
