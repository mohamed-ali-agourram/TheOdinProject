def caesar_cipher(string, shift_factor)
  alphabet_array = ("a".."z").to_a
  string_letters = string.split("")
  crypted_string = ""
  string_letters.each do |letter|
    if alphabet_array.include? letter.downcase
      crypted_index = 0
      letter_index = alphabet_array.index(letter.downcase)
      if letter_index >= 21
        crypted_index = (shift_factor - 1) - (25 - letter_index)
      else
        crypted_index = letter_index + shift_factor
      end
      if letter === letter.upcase
        crypted_string << alphabet_array[crypted_index].upcase
      else
        crypted_string << alphabet_array[crypted_index]
      end
    else
      crypted_string << letter
    end
  end
  p crypted_string
end

caesar_cipher("What a String!", 5) #  => "Bmfy f Xywnsl!"
