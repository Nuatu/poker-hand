require('rspec')
require('poker-hand')

describe('poker_hand') do
  it('returns a "pair" if only two cards have the same number') do
    poker_hand(['2S', '2C', '4D', '5C', '6H']).should(eq("One Pair"))
  end
  it('returns  "Two pair" if there are two pairs of cards') do
    poker_hand(['2S', '2C', '4D', '4C', '6H']).should(eq("Two Pair"))
  end
  it('returns  "3 of a kind" if there are 3 of the same card') do
    poker_hand(['2S', '2C', '2D', '4C', '6H']).should(eq("3 of a Kind"))
  end
  it('returns  "Straight" if there are 5 cards in consecutive order') do
    poker_hand(['2S', '3C', '4D', '5C', '6H']).should(eq("Straight"))
  end
  it('returns  "Full House" if 1 card pair plus 3 of a kind') do
    poker_hand(['2S', '2C', '4D', '4C', '4H']).should(eq("Full House"))
  end
  it('returns  "4 of a Kind" if there are 4 matching cards') do
    poker_hand(['2S', '2C', '2D', '2C', '6H']).should(eq("4 of a Kind"))
  end
  it('returns  "Flush" if there are 5 matching suits') do
    poker_hand(['10C', '6C', '2C', '3C', '5C']).should(eq("Flush"))
  end
  it('returns  "Flush" if there are 5 matching suits') do
    poker_hand(['2C', '3C', '4C', '5C', '6C']).should(eq("Straight Flush"))
  end
end

