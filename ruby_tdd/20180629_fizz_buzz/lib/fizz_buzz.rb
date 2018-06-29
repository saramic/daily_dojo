class FizzBuzz
  def one_to_hundred
    (1..100).to_a.map(&method(:translate))
  end

  private

  def translate(number)
    output = []
    output << 'fizz' if divisible_by(number, 3)
    output << 'buzz' if divisible_by(number, 5)
    return number unless divisible_by(number, 3) || divisible_by(number, 5)
    output.join
  end

  def divisible_by(number, dividend)
    number % dividend == 0
  end
end
