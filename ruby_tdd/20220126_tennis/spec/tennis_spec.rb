require "tennis"

RSpec.describe Tennis do
  it "starts a game with 'love all'" do
    expect(described_class.score).to eq "love all"
  end

  it "returns '15 love' for a server point from 'love all'" do
    expect(described_class.point(:server, "love all")).to eq "fifteen love"
  end

  it "returns 'love 15' for a receiver point from 'love all'" do
    expect(described_class.point(:reciever, "love all")).to eq "love fifteen"
  end

  it "returns 'love 30' for a reciever point from 'love 15'" do
    expect(described_class.point(:reciever, "love fifteen")).to eq "love thirty"
  end

  it "returns 'love 40' for a reciever point from 'love 30'" do
    expect(described_class.point(:reciever, "love thirty")).to eq "love forty"
  end

  it "returns 'game reciever' for a reciever point from 'love 40'" do
    expect(described_class.point(:reciever, "love forty")).to eq "game receiver"
  end

  it "a server wins in straight points" do
    last_score = described_class.score
    expect(last_score).to eq "love all"
    [
      "fifteen love",
      "thirty love",
      "forty love",
      "game server",
    ].each do |result|
      last_score = described_class.point(:server, last_score)
      expect(last_score).to eq result
    end
  end

  it "returns 'deuce' for a reciver point from 'forty thirty'" do
    expect(described_class.point(:reciever, "forty thirty")).to eq "deuce"
  end

  it "returns 'advantage server' for a server point from 'deuce'" do
    expect(described_class.point(:server, "deuce")).to eq "advantage server"
  end

  it "returns 'advantage reciever' for a reciver point from 'deuce'" do
    expect(described_class.point(:reciever, "deuce")).to eq "advantage receiver"
  end
end
