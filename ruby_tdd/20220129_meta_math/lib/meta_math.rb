# frozen_string_literal: true

# MetaMath module to allow english like math to happen
module MetaMath
  NUMBERS = %w[
    zero
    one
    two
    three
    four
    five
    six
    seven
    eight
    nine
  ].freeze

  NUMBERS.each_with_index do |number, index|
    define_method number do |arg = nil|
      arg ? arg.call(index) : index
    end
  end

  def plus(arg)
    ->(x) { x + arg }
  end

  def times(arg)
    ->(x) { x * arg }
  end
end
