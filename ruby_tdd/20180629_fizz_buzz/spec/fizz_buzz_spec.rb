require "spec_helper"
require 'fizz_buzz'

RSpec.describe FizzBuzz do
  subject(:fizz_buzz) { FizzBuzz.new }

  it 'returns numbers beginning at 1' do
    expect(fizz_buzz.one_to_hundred.first).to eq 1
  end

  it 'returns numbers ending at buzz (as 100 is divisible by 5)' do
    expect(fizz_buzz.one_to_hundred.last).to eq 'buzz'
  end

  it 'returns last 3 numbers of 98 fizz buzz' do
    expect(fizz_buzz.one_to_hundred.last(3)).to eq([98, 'fizz', 'buzz'])
  end

  it 'numbers divisible by 3 are replaced by string fizz' do
    expect(fizz_buzz.one_to_hundred.first(3).last).to eq 'fizz'
    expect(fizz_buzz.one_to_hundred.first(6).last).to eq 'fizz'
  end

  it 'numbers divisible by 5 are replaced by string buzz' do
    expect(fizz_buzz.one_to_hundred.first(5).last).to eq 'buzz'
    expect(fizz_buzz.one_to_hundred.first(10).last).to eq 'buzz'
  end

  it 'numbers divisible by 3 adn 5 are replaced by string fizzbuzz' do
    expect(fizz_buzz.one_to_hundred.first(15).last).to eq 'fizzbuzz'
    expect(fizz_buzz.one_to_hundred.first(30).last).to eq 'fizzbuzz'
  end
end
