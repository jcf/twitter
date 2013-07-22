require 'helper'

describe Nunemaker::Twitter::ActionFactory do

  describe ".new" do
    it "generates a Favorite" do
      action = Nunemaker::Twitter::ActionFactory.new(:action => "favorite")
      expect(action).to be_a Nunemaker::Twitter::Action::Favorite
    end
    it "generates a Follow" do
      action = Nunemaker::Twitter::ActionFactory.new(:action => "follow")
      expect(action).to be_a Nunemaker::Twitter::Action::Follow
    end
    it "generates a ListMemberAdded" do
      action = Nunemaker::Twitter::ActionFactory.new(:action => "list_member_added")
      expect(action).to be_a Nunemaker::Twitter::Action::ListMemberAdded
    end
    it "generates a Mention" do
      action = Nunemaker::Twitter::ActionFactory.new(:action => "mention")
      expect(action).to be_a Nunemaker::Twitter::Action::Mention
    end
    it "generates a Reply" do
      action = Nunemaker::Twitter::ActionFactory.new(:action => "reply")
      expect(action).to be_a Nunemaker::Twitter::Action::Reply
    end
    it "generates a Retweet" do
      action = Nunemaker::Twitter::ActionFactory.new(:action => "retweet")
      expect(action).to be_a Nunemaker::Twitter::Action::Retweet
    end
    it "raises an ArgumentError when action is not specified" do
      expect{Nunemaker::Twitter::ActionFactory.new}.to raise_error ArgumentError
    end
  end

end
