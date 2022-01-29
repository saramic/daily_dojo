# frozen_string_literal: true

class MusicTiming
  def for(bar_notation)
    bar = parse_from(bar_notation)
    notes = convert_to_notes(bar)
    format_output(notes)
  end

  private

  def parse_from(bar_notation)
    bar_notation.gsub(/[\[\]]/, "").split(",").map(&:to_i)
  end

  def convert_to_notes(bar)
    notes = {}
    bar.each_with_index do |note, index|
      named_note = " "
      if note == 1
        next_note = bar.slice(index + 1, bar.size - index).index(1) || (bar.size - index - 1)
        named_note = case next_note
                     when 1
                       "minim"
                     when 3
                       "semibreve"
                     end
      end

      notes[index + 1] = named_note
    end
    notes
  end

  def format_output(notes)
    output = []
    output << notes.keys.map do |key|
      length = [notes[key]&.length || 0, key.digits.size].max
      format("%-#{length}s", key)
    end.join(" ")
    output << notes.values.join(" ").rstrip
    output.join("\n")
  end
end
