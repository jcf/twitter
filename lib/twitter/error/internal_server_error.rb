require 'twitter/error/server_error'

module Nunemaker::Twitter
  class Error
    # Raised when Nunemaker::Twitter returns the HTTP status code 500
    class InternalServerError < Nunemaker::Twitter::Error::ServerError
      HTTP_STATUS_CODE = 500
      MESSAGE = "Something is technically wrong."
    end
  end
end
