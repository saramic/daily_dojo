# frozen_string_literal: true

require "meta_math"

RSpec.describe MetaMath do
  include described_class
  it "returns 1 for one" do
    expect(one).to eq 1
  end

  it "returns 2 for two" do
    expect(two).to eq 2
  end

  describe "basic operations" do
    subject(:expression) { eval self.class.description } # rubocop:disable Security/Eval

    describe "one plus one" do
      it { is_expected.to eq 2 }
    end

    describe "one plus two plus three plus four plus five" do
      it { is_expected.to eq 15 }
    end

    describe "fifteen plus six plus seven plus eight plus nine" do
      it { is_expected.to eq 45 }
    end

    describe "three times four" do
      it { is_expected.to eq 12 }
    end

    describe "nine divided by three" do
      it { is_expected.to eq 3 }
    end

    # NOTE: "divided" is same as "divided by" as by is a pass through method
    describe "twelve divided three" do
      it { is_expected.to eq 4 }
    end

    describe "five minus four" do
      it { is_expected.to eq 1 }
    end
  end
end
