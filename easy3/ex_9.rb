def real_palindrome?(object)
  object = object.downcase.delete('^a-z0-9') #the caret ^ here negates everything that is not alphanumeric. Therefore the delete method is applied on everything that is non-alphanumeric and negate(avoids) do not deletete evrything else.
  palindrome?(object)
end

def palindrome?(object)
  object == object.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
