#!/usr/bin/env ruby
# frozen_string_literal: true

$LOAD_PATH << File.join(__dir__, "..", "lib")

require "meta_math"

class MetaMathDemo
  include MetaMath

  def run_command(command)
    # take the secuirty risk for ease of demoing
    eval command # rubocop:disable Security/Eval
  end
end

pp MetaMathDemo.new.run_command(ARGV.join)
