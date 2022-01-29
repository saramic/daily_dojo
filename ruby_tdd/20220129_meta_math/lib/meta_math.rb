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
    ten
    eleven
    twelve
    thirteen
    fourteen
    fifteen
  ].freeze

  NUMBERS.each_with_index do |number, index|
    define_method number do |arg = nil|
      arg ? arg.call(index) : index
    end
  end

  OPERATIONS = {
    times: :*,
    plus: :+,
    minus: :-,
    divided: :/,
  }.freeze

  OPERATIONS.each do |operation, operation_method|
    define_method operation do |arg|
      ->(x) { x.send(operation_method, arg) }
    end
  end
end
