require 'roman_numerals'

describe RomanNumerals do
  describe '#translate' do
    it 'accepts a string and returns it with numbers converted to roman numerals' do
      text = "3 is a Roman numeral"
      converted_text = "III is a Roman numeral"
      expect(subject.translate(text)).to eq converted_text
      text = "I was born in month 4"
      converted_text = "I was born in month IV"
      expect(subject.translate(text)).to eq converted_text
    end
  end
end
