require 'twitter/error'

module Nunemaker::Twitter
  class Error
    class ConfigurationError < ::ArgumentError
    end
  end
end
