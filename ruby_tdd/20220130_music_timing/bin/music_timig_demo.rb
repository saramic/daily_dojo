#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH << File.join(__dir__, "..", "lib")

require "music_timing"

music_timing = MusicTiming.new
puts music_timing.for(ARGV.join)
