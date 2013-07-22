require 'twitter/error/client_error'

module Nunemaker::Twitter
  class Error
    # Raised when Nunemaker::Twitter returns the HTTP status code 401
    class Unauthorized < Nunemaker::Twitter::Error::ClientError
      HTTP_STATUS_CODE = 401
    end
  end
end
