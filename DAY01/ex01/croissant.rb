def croissant
  file = File.new('numbers.txt', 'r')
  numbers = file.read
  numbers.delete! ','
  puts(numbers)
end

croissant
