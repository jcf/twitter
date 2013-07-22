require 'twitter/error/client_error'

module Nunemaker::Twitter
  class Error
    # Raised when Nunemaker::Twitter returns the HTTP status code 400
    class BadRequest < Nunemaker::Twitter::Error::ClientError
      HTTP_STATUS_CODE = 400
    end
  end
end
