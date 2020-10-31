# frozen_string_literal: false

# Description/Explanation of Cipher class
class Cipher
  ALPHABET = ('a'..'z').to_a
  MAX_NUMBER = 26

  def initialize(number)
    validate_number(number)
    @number = number
  end

  def rotation(input_text)
    result = ''

    input_text.each_char do |char|
      @number.times { char = char.next } if ALPHABET.include?(char.downcase)
      result << char[-1]
    end
    result
  end

  def validate_number(number)
    return unless number > MAX_NUMBER

    raise ArgumentError, 'You have entered a number greater than 26!'
  end
end
