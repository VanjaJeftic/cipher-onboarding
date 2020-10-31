# frozen_string_literal: true

require_relative 'lib/cipher'

print "*** CAESAR CIPHER ***\n"
print "\nEnter the ROT text: \n"
input_text = gets.chomp

print "\nEnter the number of rotation: \n"
number = gets.chomp.to_i

cipher = Cipher.new(number)

print "\nBefore rotation: "
puts input_text

print "\nAfter rotation: "
puts cipher.rotation(input_text)
