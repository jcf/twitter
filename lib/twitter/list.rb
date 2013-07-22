require 'twitter/creatable'
require 'twitter/identity'

module Nunemaker::Twitter
  class List < Nunemaker::Twitter::Identity
    include Nunemaker::Twitter::Creatable
    attr_reader :description, :following, :full_name, :member_count,
      :mode, :name, :slug, :subscriber_count, :uri

    # @return [Nunemaker::Twitter::User]
    def user
      @user ||= new_or_null_object(Nunemaker::Twitter::User, :user)
    end

  end
end
