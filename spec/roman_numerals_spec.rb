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

  # describe '#convert_numbers' do
  #   it 'accepts 3 and converts to III' do
  #     expect(subject.convert_numbers("3")).to eq "III"
  #   end
  #   it 'accepts 4 and converts to IV' do
  #     expect(subject.convert_numbers("4")).to eq "IV"
  #   end
  # end
end
