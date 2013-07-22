require 'twitter/error/client_error'

module Nunemaker::Twitter
  class Error
    # Raised when Nunemaker::Twitter returns the HTTP status code 422
    class UnprocessableEntity < Nunemaker::Twitter::Error::ClientError
      HTTP_STATUS_CODE = 422
    end
  end
end
