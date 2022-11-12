# @param {String} s
# @return {Integer}
def roman_to_int(s)
    @index = 0    
    total_value = 0
    
    while @index < s.length do 
        total_value += value_of_roman_numeral_character_in_string(s)
        @index += 1 
    end
    
    p total_value
end

ROMAN_NUMERAL_CHARACTERS = ['I','V','X','L','C','D','M']
ROMAN_NUMERAL_VALUES = [1, 5, 10, 50, 100, 500, 1000]

def value_of_roman_numeral_character(c)
    index = ROMAN_NUMERAL_CHARACTERS.find_index(c)
    ROMAN_NUMERAL_VALUES[index]
end

def value_of_roman_numeral_character_in_string(numeral)
    character = numeral[@index]

    return value_of_roman_numeral_character(character) if @index >= numeral.length - 1
    
    value_at_index = value_of_roman_numeral_character(character)
    value_at_next_index = value_of_roman_numeral_character(numeral[@index + 1])
    
    if (value_at_index < value_at_next_index)
        @index += 1
        return value_at_next_index - value_at_index
    end
    
    value_at_index
end

