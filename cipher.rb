# frozen_string_literal: true

require_relative 'lib/cipher'

print "*** CAESAR CIPHER ***\n"
print "\nEnter the ROT text: \n"
user_input = gets.chomp

print "\nEnter the number of rotation: \n"
number = gets.chomp.to_i

cipher_instance = Cipher.new(number)

print "\nBefore rotation: "
puts user_input

print "\nAfter rotation: "
puts cipher_instance.method_cipher(user_input)
