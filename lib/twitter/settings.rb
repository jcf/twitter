require 'twitter/base'

module Nunemaker::Twitter
  class Settings < Nunemaker::Twitter::Base
    attr_reader :always_use_https, :discoverable_by_email, :geo_enabled,
      :language, :protected, :screen_name, :show_all_inline_media, :sleep_time,
      :time_zone

    # @return [Nunemaker::Twitter::Place]
    def trend_location
      @trend_location ||= new_or_null_object(Nunemaker::Twitter::Place, :trend_location)
    end

  end
end
