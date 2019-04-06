def non_alphanumeric(array)
  new_array = []

  array.each do |wo|
    if wo.scan(/[^a-zA-Z]/)
      new_array << wo.delete("^a-zA-Z")
    else
      new_array << wo
    end
  end
  new_array
end



def word_sizes(string)
  array = string.split
  new_array = non_alphanumeric(array)

  new_hash = { }

  new_array.each do |word|
    if new_hash.has_key?(word.size)
      new_hash[word.size] = new_hash[word.size] + 1
    else
      new_hash[word.size] = 1
    end
  end
  new_hash
end


puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
