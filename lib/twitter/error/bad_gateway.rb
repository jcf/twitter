require 'twitter/error/server_error'

module Nunemaker::Twitter
  class Error
    # Raised when Nunemaker::Twitter returns the HTTP status code 502
    class BadGateway < Nunemaker::Twitter::Error::ServerError
      HTTP_STATUS_CODE = 502
      MESSAGE = "Nunemaker::Twitter is down or being upgraded."
    end
  end
end
