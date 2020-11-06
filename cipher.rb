require_relative 'lib/cipher'

def multiline_text(all_text = '')
  until (text = gets) == "\n"
    all_text << text
  end
  all_text.chomp
end

print 'Which ROT you want to use? '
number = gets.chomp.to_i

begin
  cipher = Cipher.new(number)
rescue ArgumentError => e
  puts "An error of type #{e.class} happened, message is: #{e.message}"
  exit
end

puts 'Enter text: '
number_and_text = multiline_text

print "\nBefore rotation:\n"
puts number_and_text

print "\nAfter rotation:\n"
puts cipher.rotation(number_and_text)
