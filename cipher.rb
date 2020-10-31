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
number = number_and_text[0, 1].to_i
number_and_text[0] = ''
text = number_and_text

cipher = Cipher.new(number)

print "\nBefore rotation:"
puts text

print "\nAfter rotation:"
puts cipher.rotation(text)
