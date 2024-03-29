# frozen_string_literal: true

require "music_timing"

RSpec.describe MusicTiming do
  subject(:music_timing) do
    described_class.new.for(self.class.description)
  end

  describe "[1,0,0,0]" do
    it {
      expect(music_timing).to eq <<~EOF_MUSIC_OUTPUT.chomp
        1         2 3 4
        semibreve
      EOF_MUSIC_OUTPUT
    }
  end

  describe "[1,0,1,0]" do
    it {
      expect(music_timing).to eq <<~EOF_MUSIC_OUTPUT.chomp
        1     2 3     4
        minim   minim
      EOF_MUSIC_OUTPUT
    }
  end

  describe "[1,1,1,1]" do
    it {
      expect(music_timing).to eq <<~EOF_MUSIC_OUTPUT.chomp
        1        2        3        4
        crotchet crotchet crotchet crotchet
      EOF_MUSIC_OUTPUT
    }
  end

  describe "[1,1,0,1]" do
    it {
      expect(music_timing).to eq <<~EOF_MUSIC_OUTPUT.chomp
        1        2     3 4
        crotchet minim   crotchet
      EOF_MUSIC_OUTPUT
    }
  end
end
