require 'twitter/error/client_error'

module Nunemaker::Twitter
  class Error
    # Raised when Nunemaker::Twitter returns the HTTP status code 403
    class Forbidden < Nunemaker::Twitter::Error::ClientError
      HTTP_STATUS_CODE = 403
    end
  end
end
