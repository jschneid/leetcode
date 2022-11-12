# @param {Integer} num
# @return {String}
def int_to_roman(num)
    roman_numeral = ''
    while (num > 0)
        if num >= 1000
            roman_numeral += 'M'
            num -= 1000
        elsif num >= 900
            roman_numeral += 'CM'
            num -= 900
        elsif num >= 500
            roman_numeral += 'D'
            num -= 500
        elsif num >= 400
            roman_numeral += 'CD'
            num -= 400
        elsif num >= 100
            roman_numeral += 'C'
            num -= 100
        elsif num >= 90
            roman_numeral += 'XC'
            num -= 90
        elsif num >= 50
            roman_numeral += 'L'
            num -= 50
        elsif num >= 40
            roman_numeral += 'XL'
            num -= 40
        elsif num >= 10
            roman_numeral += 'X'
            num -= 10
        elsif num >= 9
            roman_numeral += 'IX'
            num -= 9
        elsif num >= 5
            roman_numeral += 'V'
            num -= 5
        elsif num >= 4
            roman_numeral += 'IV'
            num -= 4
        else
            roman_numeral += 'I'
            num -= 1
        end
    end
    p roman_numeral
end

