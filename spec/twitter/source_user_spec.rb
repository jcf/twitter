require 'helper'

describe Nunemaker::Twitter::SourceUser do

  describe "#==" do
    it "returns true when objects IDs are the same" do
      saved_search = Nunemaker::Twitter::SourceUser.new(:id => 1, :name => "foo")
      other = Nunemaker::Twitter::SourceUser.new(:id => 1, :name => "bar")
      expect(saved_search == other).to be_true
    end
    it "returns false when objects IDs are different" do
      saved_search = Nunemaker::Twitter::SourceUser.new(:id => 1)
      other = Nunemaker::Twitter::SourceUser.new(:id => 2)
      expect(saved_search == other).to be_false
    end
    it "returns false when classes are different" do
      saved_search = Nunemaker::Twitter::SourceUser.new(:id => 1)
      other = Nunemaker::Twitter::Identity.new(:id => 1)
      expect(saved_search == other).to be_false
    end
  end

end
