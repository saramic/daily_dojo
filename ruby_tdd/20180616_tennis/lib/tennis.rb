class Tennis
  SCORE = {
    0 => 'love',
    1 => 15,
    2 => 30,
    3 => 40,
  }

  def initialize
    @player_scores = {1 => 0, 2 => 0}
  end

  def score
    have_winner ||
      have_advantage ||
      have_deuce ||
      standard_score
  end
  def player_scores(player_id)
    @player_scores[player_id] += 1
  end

  private

  def leading_player
    @player_scores.key(@player_scores.values.max)
  end

  def player_with_winning_score
    @player_scores[leading_player] > 3
  end

  def leading_by_two_or_more
    (@player_scores.values.max - @player_scores.values.min ) >= 2
  end

  def leading_by_one
    (@player_scores.values.max - @player_scores.values.min ) >= 1
  end

  def deuce_scores
    scores_equal && @player_scores.values.first >= 3
  end

  def scores_equal
    @player_scores.values.uniq.count == 1
  end

  def have_winner
    "game player #{leading_player}" if player_with_winning_score && leading_by_two_or_more
  end

  def have_advantage
    "advantage player #{leading_player}" if player_with_winning_score && leading_by_one
  end

  def have_deuce
    "deuce" if deuce_scores
  end

  def standard_score
    scores = [1, 2].map{|player| SCORE[@player_scores[player]]}
    scores = [scores.first, 'all'] if scores_equal
    scores.join(" ")
  end

end

