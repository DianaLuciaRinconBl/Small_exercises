def interleave(array1, array2)
  new_hash = { }
  index = 0

  loop do
    break if index == array1.size

      new_hash[array1[index]] = array2[index]
      index += 1
  end
  new_hash.to_a.flatten
end



p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
