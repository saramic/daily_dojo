class Tennis
  class << self
    def score
      "love all"
    end

    def point(player, current_score)
      score = parse_score(current_score)
      
      player == :server ? score[0] += 1 : score[1] += 1

      display_score(score)
    end

    private

    SCORES = {
      0 => "love",
      1 => "fifteen",
      2 => "thirty",
      3 => "forty"
    }

    def parse_score(score)
      scores = score.split
      if scores.include?("deuce")
         scores = [SCORES.keys.last, SCORES.keys.last]
      elsif scores.include?("advantage")
        scores = [Scores.keys.last, Scores.keys.last]
        scores[scores.include?("server") ? 0 : 1] += 1
      else
        scores.map!{SCORES.values.find{_1 != "all"}} if scores.include?("all")
        scores.map{SCORES.key(_1)}
      end
    end

    def display_score(score)
      game_score(score) ||
        advantage_score(score) ||
        deuce_score(score) ||
        plain_score(score)
    end

    def game_score(score)
      return nil unless (score.last - score.first).abs > 1
      return nil unless score.max >= SCORES.length

      return "game #{score.first > score.last ? "server" : "receiver"}"
    end

    def advantage_score(score)
      return nil unless (score.last - score.first).abs == 1
      return nil unless score.min >= SCORES.keys.last

      return "advantage #{score.first > score.last ? "server" : "receiver"}"
    end

    def deuce_score(score)
      "deuce" if score.first == score.last && score.first >= SCORES.keys.last
    end

    def plain_score(score)
      score.map{SCORES.dig(_1)}.join(" ")
    end
  end
end
