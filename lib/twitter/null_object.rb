module Nunemaker::Twitter
  class NullObject

    def method_missing(*args, &block)
      nil
    end

    def null?
      true
    end
    alias nil? null?

    def !
      true
    end

  end
end
