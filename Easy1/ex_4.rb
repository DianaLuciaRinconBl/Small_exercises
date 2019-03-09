# Write a method that counts the number of occurrences of each element
# in a given array.

#Once counted, print each element alongside the number of occurrences.

def count_occurrences(array)
  count = ''
  output = { }

  array.each do |item|
    count = array.count(item)
    output[item] = count
  end
  output.each do |key, value|
    puts "#{key} => #{value}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
