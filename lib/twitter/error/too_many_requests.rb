require 'twitter/error/client_error'

module Nunemaker::Twitter
  class Error
    # Raised when Nunemaker::Twitter returns the HTTP status code 429
    class TooManyRequests < Nunemaker::Twitter::Error::ClientError
      HTTP_STATUS_CODE = 429
    end
    EnhanceYourCalm = TooManyRequests
    RateLimited = TooManyRequests
  end
end
