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

  it "adds two numbers together" do
    # rubocop:disable Style/NestedParenthesizedCalls
    expect(one plus two).to eq 3
    expect(two plus three).to eq 5
    expect(four plus five).to eq 9
    # rubocop:enable Style/NestedParenthesizedCalls
  end

  describe "basic operations" do
    subject(:expression) { eval self.class.description } # rubocop:disable Security/Eval

    describe "one times three" do
      it { is_expected.to eq 3 }
    end

    describe "three times three" do
      it { is_expected.to eq 9 }
    end
  end
end
