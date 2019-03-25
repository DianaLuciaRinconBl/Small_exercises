def palindrome?(number)
  number == number.reverse
end


def palindromic_number?(number)
  number = number.to_s
  palindrome?(number)
end

def octal?(number)
  number = '0%o' % number
  palindrome?(number)
end



puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
puts palindromic_number?(050) == true

puts octal?(050) == true
