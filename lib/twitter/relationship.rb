require 'twitter/base'

module Nunemaker::Twitter
  class Relationship < Nunemaker::Twitter::Base

    # Initializes a new object
    #
    # @param attrs [Hash]
    # @return [Nunemaker::Twitter::Relationship]
    def initialize(attrs={})
      @attrs = attrs[:relationship]
    end

    # @return [Nunemaker::Twitter::SourceUser]
    def source
      @source ||= new_or_null_object(Nunemaker::Twitter::SourceUser, :source)
    end

    # @return [Nunemaker::Twitter::TargetUser]
    def target
      @target ||= new_or_null_object(Nunemaker::Twitter::TargetUser, :target)
    end

    # Update the attributes of a Relationship
    #
    # @param attrs [Hash]
    # @return [Nunemaker::Twitter::Relationship]
    def update(attrs)
      @attrs.update(attrs[:relationship]) unless attrs[:relationship].nil?
      self
    end

  end
end
