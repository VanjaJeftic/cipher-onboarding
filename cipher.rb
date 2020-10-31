# frozen_string_literal: false

require_relative 'lib/cipher'

def multiline_text(all_text = '')
  until (text = gets) == "\n"
    all_text << text
  end
  all_text.chomp
end

print 'Which ROT you want to use?'
number_and_text = multiline_text
number_from_input = number_and_text.split(' ').first
text = number_and_text.slice((number_and_text.index(' ') + 1..-1))

number = number_from_input.to_i
puts text

cipher = Cipher.new(number)

print "\nBefore rotation:\n"
puts text

print "\nAfter rotation:\n"
puts cipher.rotation(text)
