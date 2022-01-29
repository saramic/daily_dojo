# frozen_string_literal: true

# MetaMath module to allow english like math to happen
module MetaMath
  def one(args = nil)
    args ? args.call(1) : 1
  end

  def two
    2
  end

  def plus(arg)
    ->(x) { x + arg }
  end
end
