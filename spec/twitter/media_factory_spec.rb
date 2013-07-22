require 'helper'

describe Nunemaker::Twitter::MediaFactory do

  describe ".new" do
    it "generates a Photo" do
      media = Nunemaker::Twitter::MediaFactory.new(:id => 1, :type => "photo")
      expect(media).to be_a Nunemaker::Twitter::Media::Photo
    end
    it "raises an ArgumentError when type is not specified" do
      expect{Nunemaker::Twitter::MediaFactory.new}.to raise_error ArgumentError
    end
  end

end
