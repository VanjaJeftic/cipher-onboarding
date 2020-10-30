class Cipher

  def method_cipher (input_text, number_of_rotation)

    result = ""
    alphabet  = Array('a'..'z')

    input_text.each_char do |char|
      if alphabet.include? (char.downcase)
        number_of_rotation.times {char = char.next}
      end
      result << char[-1]
    end

    return result

  end


end

