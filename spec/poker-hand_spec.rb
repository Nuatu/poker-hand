require('rspec')
require('poker-hand')

describe('poker_hand') do
  it('returns a "pair" if only two cards have the same number') do
    poker_hand(['2S', '2C', '4D', '5C', '6H']).should(eq(["C", "C", "D", "H", "S"]))
  end
end
