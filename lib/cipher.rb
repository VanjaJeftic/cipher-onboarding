require_relative "cipher"

class Cipher

    def initialize(user_input, number)
      @number = number
      @user_input = user_input
    end

    def method_cipher ()
      result = ""
      alphabet  = Array('a'..'z')


      if @number > 26
        begin
          raise ArgumentError.new("You have entered a number greater than 26! Please enter a number that is <= 26!")
        rescue ArgumentError => e
          puts e.message
          console_method()
        end
      else
        @user_input.each_char do |char|
          if alphabet.include? (char.downcase)
            @number.times {char = char.next}
          end
          result << char[-1]
        end

        return result
      end
    end

end

