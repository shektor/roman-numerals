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
    update_text(text)
  end

  private

  attr_reader :numerals

  def update_text(text)
    text_array = text.chars.map do |letter|
      match_numbers(letter) ? convert_numbers(letter) : letter
    end
    array_to_string(text_array)
  end

  def match_numbers(char)
    numerals.has_key?(char)
  end

  def array_to_string(array)
    array.join
  end

  def convert_numbers(number)
    numerals[number]
  end
end
