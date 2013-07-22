require 'helper'

describe Nunemaker::Twitter::Relationship do

  describe "#source" do
    it "returns a User when source is set" do
      source = Nunemaker::Twitter::Relationship.new(:relationship => {:source => {:id => 7505382}}).source
      expect(source).to be_a Nunemaker::Twitter::SourceUser
    end
    it "returns nil when source is not set" do
      source = Nunemaker::Twitter::Relationship.new(:relationship => {}).source
      expect(source).to be_nil
    end
  end

  describe "#target" do
    it "returns a User when target is set" do
      target = Nunemaker::Twitter::Relationship.new(:relationship => {:target => {:id => 7505382}}).target
      expect(target).to be_a Nunemaker::Twitter::TargetUser
    end
    it "returns nil when target is not set" do
      target = Nunemaker::Twitter::Relationship.new(:relationship => {}).target
      expect(target).to be_nil
    end
  end

  describe "#update" do
    it "updates a relationship" do
      relationship = Nunemaker::Twitter::Relationship.new(:relationship => {:target => {:id => 7505382}})
      relationship.update(:relationship => {:target => {:id => 14100886}})
      expect(relationship.target.id).to eq 14100886
    end
  end

end
