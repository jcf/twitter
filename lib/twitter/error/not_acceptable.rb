require 'twitter/error/client_error'

module Nunemaker::Twitter
  class Error
    # Raised when Nunemaker::Twitter returns the HTTP status code 406
    class NotAcceptable < Nunemaker::Twitter::Error::ClientError
      HTTP_STATUS_CODE = 406
    end
  end
end
