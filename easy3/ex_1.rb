positions = %w(1st 2nd 3rd 4th 5th last)
inputs_array = [ ]

positions.each do |position|
  puts "Enter the #{position} number: "
  input = gets.chomp.to_i

  if position != "last"
    inputs_array << input
  else
    if inputs_array.include?(input)
      puts "The number #{input} appears in #{inputs_array}."
    else
      puts "The number #{input} does not appear in #{inputs_array}"
    end
  end
end
