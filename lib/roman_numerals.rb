class RomanNumerals
  attr_reader :numerals
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
    converted_text = text.chars.map do |letter|
      if numerals.has_key?(letter)
        convert_numbers(letter)
      else
        letter
      end
    end
    converted_text.join
  end

  def convert_numbers(number)
    numerals[number]
  end
end
