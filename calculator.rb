# Function definitions first
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end
 
def basic_calc
  # ask the user which operation they want to perform
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
 
  puts "What's the first number: "
  first_num = gets.chomp.to_f

  puts "What's the second number: "
  second_num = gets.chomp.to_f

  case operation
    when 'a'
      puts first_num + second_num
    when 's'
      puts first_num - second_num
    when 'm'
      puts first_num * second_num
    when 'd'
      puts first_num / second_num 
  end

  gets

end

def advanced_calc
  # ask the user which operation they want to perform
  print "(p)ower, (s)qrt: "
  operation = gets.chomp.downcase

  case operation
    when 'p'
      puts "What's the first number: "
      first_num = gets.chomp.to_f

      puts "What's the second number: "
      second_num = gets.chomp.to_f
      puts first_num**second_num
    when 's'
      puts "What's the number: "
      num = gets.chomp.to_f
      puts Math.sqrt(num)
  end

  gets

end
 
 
# run the app...
 
response = menu
 
while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  end
 
  response = menu
end