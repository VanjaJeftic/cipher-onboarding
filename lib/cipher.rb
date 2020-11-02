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
    return unless number > MAX_NUMBER

    begin
      raise ArgumentError, 'You have entered a number greater than 26!'
    rescue StandardError => e
      puts "An error of type #{e.class} happened, message is: #{e.message}"
      exit
    end
  end
end
