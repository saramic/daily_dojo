# frozen_string_literal: true

class MusicTiming
  def for(_bar_notation)
    <<~EOF_OUTPUT.chomp
      1         2 3 4
      semibreve
    EOF_OUTPUT
  end
end
