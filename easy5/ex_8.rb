# input
# array of integers
# output
# array of integers sorted out alphabetically based on eanglish words
#
# In a method take an array and return another array with the integers from the
# original array organised alphateically based on their english word name.
#
# 1.
# 2. Define a method that takes an argument (array of integers)
# 2.1 Write a hash => keys: word value:number
# 3.organise the key names alphabetically
# 4. iterate through each key in keys_hash
# 5. Find the pairing value from the hash hash to match it with keys_hash
# 8. return only the values as an array of integers

HASH = { 'zero' => 0,
          'one' => 1,
          'two' => 2,
          'three' => 3,
          'four' => 4,
          'five' => 5,
          'six' => 6,
          'seven' => 7,
          'eight' => 8,
          'nine' => 9,
          'ten' => 10,
          'eleven' => 11,
          'twelve' => 12,
          'thirdteen' => 13,
          'fourteen' => 14,
          'fifteen' => 15,
          'sixteen' => 16,
          'seventeen' => 17,
          'eighteen' => 18,
          'nineteen' => 19 }

def alphabetic_number_sort(array)
  key_value_hash = { }
  new_array = []

  keys_hash = HASH.keys.sort

  keys_hash.each do |key|
    key_value_hash[key] = HASH[key]
  end

  key_value_hash.each do | _ , value|
    new_array << value if array.include?(value)
  end
  
  new_array
end


p alphabetic_number_sort((0..19).to_a) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]
p alphabetic_number_sort((0..10).to_a) == [8, 5, 4, 9, 1, 7, 6, 10, 3, 2, 0]
p alphabetic_number_sort((0..18).to_a) == [8, 18, 11, 15, 5, 4, 14, 9, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]
p alphabetic_number_sort((0..2).to_a) == [1, 2, 0]
