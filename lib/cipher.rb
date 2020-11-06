class Cipher
  ALPHABET = ('a'..'z').to_a
  MAX_NUMBER = 26

  def initialize(number)
    validate_number(number)
    @number = number
  end

  def rotation(text)
    result = ''

    text.each_char do |char|
      @number.times { char = char.next } if ALPHABET.include?(char.downcase)
      result << char[-1]
    end
    result
  end

  private

  def validate_number(number)
    raise ArgumentError, 'You have entered a number greater than 26!' if number > MAX_NUMBER
  end
end
