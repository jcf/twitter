require 'twitter/error'

module Nunemaker::Twitter
  class Error
    # Raised when JSON parsing fails
    class ParserError < Nunemaker::Twitter::Error
    end
  end
end
