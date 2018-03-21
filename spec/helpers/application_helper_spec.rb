require "spec_helper"

describe ApplicationHelper do
  describe "#format_time" do
    it "uses correct method to return formatted time" do
      time = 2.days.ago
      expect(helper).to receive(:time_ago_in_words).with(time).once

      helper.format_time(time)
    end
  end
end
