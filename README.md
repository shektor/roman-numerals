# Roman Numerals
The aim of this challenge was to break one class into two classes that work together, while maintaining test coverage.  

First build a class that takes some text, finds the numbers and converts them, and then return the whole text with the numbers changed to Roman numerals.  

Break this class into 2 so that one class finds numbers within a string, and passes them to another class that can convert the numbers to Roman numerals.

### User story

```
As a historian
So that I can speak some Roman
I want to translate a sentence where any numbers are converted in to Roman numerals
```

Example input: `3 is a Roman numeral`
Example output: `III is a Roman numeral`

To simplify the initial challenge I will assume only numbers 1 to 9 are entered.  

### Feature test

Imagining how to use it
```
001 > roman_numerals = RomanNumerals.new
 => #<Translator:0x007fafdb81ea88>
002 > roman_numerals.translate("I was born in month 4")
 => "I was born in month IV"
```
