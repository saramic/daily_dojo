require 'fizz_buzz'

RSpec.describe FizzBuzz do
  subject(:fizz_buzz) { described_class.new }

  it 'should return 1 for 1' do
    expect(fizz_buzz.number(1)).to eq(1)
  end

  it 'should return fizz for 3' do
    expect(fizz_buzz.number(3)).to eq('fizz')
  end

  it 'should return buzz for 5' do
    expect(fizz_buzz.number(5)).to eq('buzz')
  end

  it 'should return fizzbuzz for 15' do
    expect(fizz_buzz.number(15)).to eq('fizzbuzz')
  end
end
