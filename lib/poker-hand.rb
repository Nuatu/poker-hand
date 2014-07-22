def poker_hand (hand)
  values = []

  hand.each do |value|
    values.push([value[0].to_i,value[1]])
  end

  p values
end

poker_hand(['2S', '2C', '4D', '5C', '6H'])
