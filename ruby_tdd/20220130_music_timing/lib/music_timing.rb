# frozen_string_literal: true

class MusicTiming
  NOTES = {
    1 => "crotchet",
    2 => "minim",
    4 => "semibreve",
  }.freeze

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
        note_length = bar.slice(index + 1, bar.size - index).index(1)
        note_length += 1 if note_length
        note_length ||= bar.size - index
        named_note = NOTES[note_length]
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
    end.join(" ").rstrip
    output << notes.values.join(" ").rstrip
    output.join("\n")
  end
end
