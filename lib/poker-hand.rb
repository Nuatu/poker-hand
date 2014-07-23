

def poker_hand (hand)
  numbers = []; suits = []
  score = 0
  royal = [10,11,12,13,14]

  numbers = sorter(hand)[0]
  suits = sorter(hand)[1]
  p num_score = num_valuer(number_scorer(numbers))
  # p suit_scorer(suits)
  p suit_score = suit_valuer(suit_scorer(suits))
  # output = num_score + " " + suit_score
  # p output

end

def suit_scorer (input)
  counter=0
  input.each do |value1|
    input.each do |value2|
      if value1 == value2
        counter+=1
      end
    end
  end
  if counter == 5
    if input[4] - input[0] == 4
      counter += 7
    end
  end
  counter
end

def number_scorer (input)
  counter=0
  input.each do |value1|
    input.each do |value2|
      if value1 == value2
        counter+=1
      end
    end
  end
  if counter == 5
    if input[4] - input[0] == 4
      counter += 7
    end
  end
  counter
end

def suit_valuer (score)
  if score == 25
    return "Flush"
  else
    return ""
  end
end

def num_valuer (score)
  if score == 5
    return "No Hand"
  elsif score == 7
    return "One Pair"
  elsif score == 9
    return "Two Pair"
  elsif score == 11
    return "3 of a Kind"
  elsif score == 12
    return "Straight"
  elsif score == 13
    return "Full House"
  end
end

def sorter(input)
  # if input[0].kind_of?(String) == true;
  #   input[0]
  numbers = [];  suits = [];  result = []

  input.each do |value|
    if value.length > 2
      numbers << (value[0..1].to_i)
      suits << (value[2])
    else
      numbers << (value[0].to_i)
      suits << (value[1])
    end
  numbers.sort!
  suits.sort!
  end
  result << numbers
  result << suits
end

poker_hand(['2S', '2S', '4S', '4S', '4C'])
# p suit_scorer(['H', 'H', 'H', 'H', 'H'])

