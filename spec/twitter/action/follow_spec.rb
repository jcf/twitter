require 'helper'

describe Nunemaker::Twitter::Action::Follow do

  describe "#sources" do
    it "returns a collection of users who followed a user" do
      sources = Nunemaker::Twitter::Action::Follow.new(:sources => [{:id => 7505382}]).sources
      expect(sources).to be_an Array
      expect(sources.first).to be_a Nunemaker::Twitter::User
    end
    it "is empty when not set" do
      sources = Nunemaker::Twitter::Action::Follow.new.sources
      expect(sources).to be_empty
    end
  end

  describe "#targets" do
    it "returns a collection containing the followed user" do
      targets = Nunemaker::Twitter::Action::Follow.new(:targets => [{:id => 7505382}]).targets
      expect(targets).to be_an Array
      expect(targets.first).to be_a Nunemaker::Twitter::User
    end
    it "is empty when not set" do
      targets = Nunemaker::Twitter::Action::Follow.new.targets
      expect(targets).to be_empty
    end
  end

end
