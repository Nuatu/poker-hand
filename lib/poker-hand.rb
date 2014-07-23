

def poker_hand (hand)
  values = [];  numbers = []; suits = []
  score = 0

  numbers = sorter(hand)[0]
  suits = sorter(hand)[1]

  # # end
  p numbers
  p suits
  p values
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

poker_hand(['10S', '2C', '4D', '5C', '6H'])

