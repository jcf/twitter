require 'twitter/error/client_error'

module Nunemaker::Twitter
  class Error
    # Raised when Nunemaker::Twitter returns the HTTP status code 404
    class NotFound < Nunemaker::Twitter::Error::ClientError
      HTTP_STATUS_CODE = 404
    end
  end
end
