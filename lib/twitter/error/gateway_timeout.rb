require 'twitter/error/server_error'

module Nunemaker::Twitter
  class Error
    # Raised when Nunemaker::Twitter returns the HTTP status code 504
    class GatewayTimeout < Nunemaker::Twitter::Error::ServerError
      HTTP_STATUS_CODE = 504
      MESSAGE = "The Nunemaker::Twitter servers are up, but the request couldn't be serviced due to some failure within our stack. Try again later."
    end
  end
end
