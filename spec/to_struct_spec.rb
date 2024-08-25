# frozen_string_literal: true

require "spec_helper"

HASH = {
  first_name: "Dorian",
  last_name: "Marié",
  events: [{ name: "Party!" }]
}.freeze

STRUCT = HASH.to_struct
DEEP_STRUCT = HASH.to_deep_struct

RSpec.describe "to_struct" do
  describe "#to_struct" do
    it "works" do
      expect(STRUCT.first_name).to eq("Dorian")
      expect(STRUCT.last_name).to eq("Marié")
      expect(STRUCT.from_struct).to eq(HASH)
    end

    it "raises an eerror on missing value" do
      expect { STRUCT.birthday }.to raise_error(NoMethodError)
    end

    it "doesn't deep structify" do
      expect { STRUCT.events.first.name }.to raise_error(NoMethodError)
    end
  end

  describe "#to_deep_struct" do
    it "works" do
      expect(DEEP_STRUCT.first_name).to eq("Dorian")
      expect(DEEP_STRUCT.last_name).to eq("Marié")
      expect(DEEP_STRUCT.events.first.name).to eq("Party!")
      expect(DEEP_STRUCT.from_struct).not_to eq(HASH)
      expect(DEEP_STRUCT.from_deep_struct).to eq(HASH)
    end

    it "raises an eerror on missing value" do
      expect { DEEP_STRUCT.birthday }.to raise_error(NoMethodError)
    end
  end
end
