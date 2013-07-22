require 'helper'

describe Nunemaker::Twitter::Size do

  describe "#==" do
    it "returns false for empty objects" do
      size = Nunemaker::Twitter::Size.new
      other = Nunemaker::Twitter::Size.new
      expect(size == other).to be_false
    end
    it "returns true when objects height and width are the same" do
      size = Nunemaker::Twitter::Size.new(:h => 1, :w => 1, :resize => true)
      other = Nunemaker::Twitter::Size.new(:h => 1, :w => 1, :resize => false)
      expect(size == other).to be_true
    end
    it "returns false when objects height or width are different" do
      size = Nunemaker::Twitter::Size.new(:h => 1, :w => 1)
      other = Nunemaker::Twitter::Size.new(:h => 1, :w => 2)
      expect(size == other).to be_false
    end
    it "returns false when classes are different" do
      size = Nunemaker::Twitter::Size.new(:h => 1, :w => 1)
      other = Nunemaker::Twitter::Base.new(:h => 1, :w => 1)
      expect(size == other).to be_false
    end
    it "returns true when objects non-height and width attributes are the same" do
      size = Nunemaker::Twitter::Size.new(:resize => true)
      other = Nunemaker::Twitter::Size.new(:resize => true)
      expect(size == other).to be_true
    end
    it "returns false when objects non-height and width attributes are different" do
      size = Nunemaker::Twitter::Size.new(:resize => true)
      other = Nunemaker::Twitter::Size.new(:resize => false)
      expect(size == other).to be_false
    end
  end

end
