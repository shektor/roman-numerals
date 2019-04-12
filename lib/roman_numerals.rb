class RomanNumerals

  def initialize
    @numerals = {
      "1" => "I",
      "2" => "II",
      "3" => "III",
      "4" => "IV",
      "5" => "V",
      "6" => "VI",
      "7" => "VII",
      "8" => "VIII",
      "9" => "IX"
    }
  end

  def translate(text)
    find_numbers(text)
  end

  private

  attr_reader :numerals

  def find_numbers(text)
    text_array = text.chars.map do |letter|
      if numerals.has_key?(letter)
        convert_numbers(letter)
      else
        letter
      end
    end
    array_to_string(text_array)
  end

  def array_to_string(array)
    array.join
  end

  def convert_numbers(number)
    numerals[number]
  end
end
