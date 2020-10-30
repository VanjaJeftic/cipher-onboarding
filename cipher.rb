require_relative "lib/cipher"

print "*** CAESAR CIPHER ***\n"

user_input = ARGV.join(" ")

print "\nEnter the number of times you want to rotate entered text: \n"
number = STDIN.gets.chomp.to_i

cipher_instance = Cipher.new()

if number > 26
  while number > 26
    print "\n***Please enter a number <= 26!***\n"
    corrected_number = gets.chomp.to_i
    if corrected_number <= 26
      break
    end
  end
  print "\nResult: "
  puts cipher_instance.method_cipher( user_input, corrected_number)
else
  print "\nResult: "
  puts cipher_instance.method_cipher( user_input, number)
end



