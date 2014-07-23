

def poker_hand (hand)
  numbers = []; suits = []
  score = 0

  numbers = sorter(hand)[0]
  suits = sorter(hand)[1]
  num_value(number_scorer(numbers))


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



def num_value (score)
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

# p poker_hand(['2S', '2C', '4D', '4C', '4H'])
p suit_scorer(['H', 'H', 'H', 'H', 'H'])

