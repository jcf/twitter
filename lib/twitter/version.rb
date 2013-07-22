require File.expand_path('../../nunemaker', __FILE__)
module Nunemaker::Twitter

  class Version

    MAJOR = 4 unless defined? Nunemaker::Twitter::Version::MAJOR

    MINOR = 8 unless defined? Nunemaker::Twitter::Version::MINOR

    PATCH = 1 unless defined? Nunemaker::Twitter::Version::PATCH

    PRE = nil unless defined? Nunemaker::Twitter::Version::PRE



    class << self



      # @return [String]

      def to_s

        [MAJOR, MINOR, PATCH, PRE].compact.join('.')

      end



    end



  end

end
