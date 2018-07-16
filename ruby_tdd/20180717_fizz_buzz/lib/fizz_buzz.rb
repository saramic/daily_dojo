class FizzBuzz
  def one_to_hundred
    (1..100).to_a.map{|number| fizz_buzz_number(number) }
  end

  private

  def fizz_buzz_number(number)
    output = []
    output << 'fizz' if divisible_by(number, 3)
    output << 'buzz' if divisible_by(number, 5)
    output == [] ? number : output.join
  end

  def divisible_by(number, divisor)
    (number % divisor).zero?
  end
end