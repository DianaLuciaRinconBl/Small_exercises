# input
# 2 integers
# output
# both integers true == false
# both integers false == false
# only one integer true == true
# only one integer false == true


def xor?(a, b)
  return true if a && !b
  return true if !a && b
  false
end



puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
