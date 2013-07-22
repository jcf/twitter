require 'twitter/creatable'
require 'twitter/identity'

module Nunemaker::Twitter
  class DirectMessage < Nunemaker::Twitter::Identity
    include Nunemaker::Twitter::Creatable
    attr_reader :text
    alias full_text text

    # @return [Nunemaker::Twitter::User]
    def recipient
      @recipient ||= new_or_null_object(Nunemaker::Twitter::User, :recipient)
    end

    # @return [Nunemaker::Twitter::User]
    def sender
      @sender ||= new_or_null_object(Nunemaker::Twitter::User, :sender)
    end

  end
end
