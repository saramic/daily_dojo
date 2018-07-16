require 'fizz_buzz'

describe FizzBuzz do
  subject(:fizz_buzz) { FizzBuzz.new }
  it 'should returns 100 fizz buzz numbers' do
    expect(fizz_buzz.one_to_hundred.count).to eq 100
  end

  it 'first number is 1' do
    expect(fizz_buzz.one_to_hundred.first).to eq 1
  end

  it 'number divisible by 3 is fizz' do
    expect(fizz_buzz.one_to_hundred.first(3).last).to eq 'fizz'
    expect(fizz_buzz.one_to_hundred.first(6).last).to eq 'fizz'
    expect(fizz_buzz.one_to_hundred.first(99).last).to eq 'fizz'
  end

  it 'number divisible by 5 is buzz' do
    expect(fizz_buzz.one_to_hundred.first(5).last).to eq 'buzz'
    expect(fizz_buzz.one_to_hundred.first(10).last).to eq 'buzz'
    expect(fizz_buzz.one_to_hundred.first(20).last).to eq 'buzz'
  end

  it 'number divisible by 3 and 5 is fizzbuzz' do
    expect(fizz_buzz.one_to_hundred.first(15).last).to eq 'fizzbuzz'
    expect(fizz_buzz.one_to_hundred.first(30).last).to eq 'fizzbuzz'
    expect(fizz_buzz.one_to_hundred.first(90).last).to eq 'fizzbuzz'
  end
end