module Nunemaker::Twitter
  class Factory

    # Construct a new action object
    #
    # @param attrs [Hash]
    # @raise [ArgumentError] Error raised when supplied argument is missing an :action key.
    # @return [Nunemaker::Twitter::Action::Favorite, Nunemaker::Twitter::Action::Follow, Nunemaker::Twitter::Action::ListMemberAdded, Nunemaker::Twitter::Action::Mention, Nunemaker::Twitter::Action::Reply, Nunemaker::Twitter::Action::Retweet]
    def self.new(method, klass, attrs={})
      type = attrs.delete(method.to_sym)
      if type
        const_name = type.gsub(/\/(.?)/){"::#{$1.upcase}"}.gsub(/(?:^|_)(.)/){$1.upcase}
        klass.const_get(const_name.to_sym).new(attrs)
      else
        raise ArgumentError, "argument must have :#{method} key"
      end
    end

  end
end
