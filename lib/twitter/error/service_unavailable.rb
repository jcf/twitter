require 'twitter/error/server_error'

module Nunemaker::Twitter
  class Error
    # Raised when Nunemaker::Twitter returns the HTTP status code 503
    class ServiceUnavailable < Nunemaker::Twitter::Error::ServerError
      HTTP_STATUS_CODE = 503
      MESSAGE = "(__-){ Nunemaker::Twitter is over capacity."
    end
  end
end
