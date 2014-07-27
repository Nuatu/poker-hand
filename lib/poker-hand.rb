# program still needs Royal Flush

def poker_hand (hand)
  numbers = []; suits = []
  royal = [10,"J","Q","K","A"]
  output = ""

  numbers = sorter(hand)[0]
  suits = sorter(hand)[1]
  num_score = num_valuer(number_scorer(numbers))
 
  suit_score = suit_valuer(suit_scorer(suits))

   # num_score = "Royal" : num_score = num_score 

  # p royal_score

  p numbers

  if numbers[0] == 10 and suit_score == "Flush"
    output = "Royal " + suit_score
  elsif num_score == "No Hand" and suit_score == "Flush"
    output = suit_score
  elsif num_score == "Straight" and numbers[4] == 10
    output "Royal"
  elsif num_score == "Straight" and suit_score == "Flush"
    output = num_score + " " + suit_score
  elsif num_score == "No Hand"
    output = num_score
  else
    output = num_score + suit_score
  end

  output
end

def isRoyal (input)

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
  elsif score == 17
    return "4 of a Kind"
  elsif score == 12
    return "Straight"
  elsif score == 13
    return "Full House"
  end
end

def sorter(input)
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

p poker_hand(['9S', '10S', '11S', '12S', '13S'])
#p poker_hand(['4S', '10S', '6S', '7S', '8C'])
# p suit_scorer(['H', 'H', 'H', 'H', 'H'])
#p poker_hand(['2S', '4S', '4D', '2C', '4C'])

