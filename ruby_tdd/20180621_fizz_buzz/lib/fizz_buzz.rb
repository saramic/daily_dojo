class FizzBuzz
  def number(input)
    @input = input
    output = []
    output << 'fizz' if div_by(3)
    output << 'buzz' if div_by(5)
    output == [] ? input : output.join
  end

  private

  def div_by(number)
    @input % number == 0
  end
end
