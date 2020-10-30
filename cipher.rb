require_relative "lib/cipher"

print "*** CAESAR CIPHER ***\n"
print "\nEnter the text you would you like to rotate: \n"
$user_input = gets.chomp

def console_method()

  print "\nEnter the number of times you want to rotate entered text: \n"
  number = gets.chomp.to_i

  cipher_instance = Cipher.new($user_input, number)

  $result = cipher_instance.method_cipher()

end

console_method()

puts "\nResult is: #{$result}"





