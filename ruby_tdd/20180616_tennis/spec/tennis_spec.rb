require 'tennis'

RSpec.describe Tennis do
  [
    { p1_score: 0, p2_score: 0, score: 'love all' },
    { p1_score: 1, p2_score: 0, score: '15 love' },
    { p1_score: 2, p2_score: 0, score: '30 love' },
    { p1_score: 3, p2_score: 0, score: '40 love' },
    { p1_score: 4, p2_score: 0, score: 'game player 1' },
    { p1_score: 0, p2_score: 4, score: 'game player 2' },
    { p1_score: 0, p2_score: 1, score: 'love 15' },
    { p1_score: 0, p2_score: 2, score: 'love 30' },
    { p1_score: 1, p2_score: 2, score: '15 30' },
    { p1_score: 2, p2_score: 2, score: '30 all' },
    { p1_score: 2, p2_score: 3, score: '30 40' },
    { p1_score: 3, p2_score: 3, score: 'deuce' },
    { p1_score: 4, p2_score: 3, score: 'advantage player 1' },
    { p1_score: 5, p2_score: 3, score: 'game player 1' },
    { p1_score: 4, p2_score: 4, score: 'deuce' },
    { p1_score: 4, p2_score: 5, score: 'advantage player 2' },
    { p1_score: 5, p2_score: 5, score: 'deuce' },
    { p1_score: 5, p2_score: 6, score: 'advantage player 2' },
    { p1_score: 5, p2_score: 7, score: 'game player 2' },
  ].each do |args|
    context "p1 scores #{args[:p1_score]} times and p2 scores #{args[:p2_score]} times" do
      subject(:tennis) { Tennis.new }
      before do
        args[:p1_score].times{ tennis.player_scores(1) }
        args[:p2_score].times{ tennis.player_scores(2) }
      end
      it "the score is #{args[:score]}" do
        expect(tennis.score).to eq args[:score]
      end
    end
  end
end

