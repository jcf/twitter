require 'helper'

describe Nunemaker::Twitter::Geo do

  before do
    @geo = Nunemaker::Twitter::Geo.new(:coordinates => [[[-122.40348192, 37.77752898], [-122.387436, 37.77752898], [-122.387436, 37.79448597], [-122.40348192, 37.79448597]]])
  end

  describe "#==" do
    it "returns false for empty objects" do
      geo = Nunemaker::Twitter::Geo.new
      other = Nunemaker::Twitter::Geo.new
      expect(geo == other).to be_false
    end
    it "returns true when objects coordinates are the same" do
      other = Nunemaker::Twitter::Geo.new(:coordinates => [[[-122.40348192, 37.77752898], [-122.387436, 37.77752898], [-122.387436, 37.79448597], [-122.40348192, 37.79448597]]])
      expect(@geo == other).to be_true
    end
    it "returns false when objects coordinates are different" do
      other = Nunemaker::Twitter::Geo.new(:coordinates => [[[37.77752898, -122.40348192], [37.77752898, -122.387436], [37.79448597, -122.387436], [37.79448597, -122.40348192]]])
      expect(@geo == other).to be_false
    end
    it "returns false when classes are different" do
      other = Nunemaker::Twitter::Geo::Polygon.new(:coordinates => [[[-122.40348192, 37.77752898], [-122.387436, 37.77752898], [-122.387436, 37.79448597], [-122.40348192, 37.79448597]]])
      expect(@geo == other).to be_false
    end
  end

end
