def merge(arr1, arr2)
  arr1.concat(arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge(["a", "b"],["c", "d"])
