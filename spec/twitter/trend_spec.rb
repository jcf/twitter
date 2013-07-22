require 'helper'

describe Nunemaker::Twitter::Trend do

  describe "#==" do
    it "returns false for empty objects" do
      trend = Nunemaker::Twitter::Trend.new
      other = Nunemaker::Twitter::Trend.new
      expect(trend == other).to be_false
    end
    it "returns true when objects names are the same" do
      trend = Nunemaker::Twitter::Trend.new(:name => "#sevenwordsaftersex", :query => "foo")
      other = Nunemaker::Twitter::Trend.new(:name => "#sevenwordsaftersex", :query => "bar")
      expect(trend == other).to be_true
    end
    it "returns false when objects names are different" do
      trend = Nunemaker::Twitter::Trend.new(:name => "#sevenwordsaftersex")
      other = Nunemaker::Twitter::Trend.new(:name => "#sixwordsaftersex")
      expect(trend == other).to be_false
    end
    it "returns false when classes are different" do
      trend = Nunemaker::Twitter::Trend.new(:name => "#sevenwordsaftersex")
      other = Nunemaker::Twitter::Base.new(:name => "#sevenwordsaftersex")
      expect(trend == other).to be_false
    end
    it "returns true when objects non-name attributes are the same" do
      trend = Nunemaker::Twitter::Trend.new(:query => "foo")
      other = Nunemaker::Twitter::Trend.new(:query => "foo")
      expect(trend == other).to be_true
    end
    it "returns false when objects non-name attributes are different" do
      trend = Nunemaker::Twitter::Trend.new(:query => "foo")
      other = Nunemaker::Twitter::Trend.new(:query => "bar")
      expect(trend == other).to be_false
    end
  end

end
