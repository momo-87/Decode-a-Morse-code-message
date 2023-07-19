MORSE_CODE = {'.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
'..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
'-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
'.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
'..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
'--..' => 'Z'}

def decode_morse_char(morse_char)
    MORSE_CODE[morse_char] || ""
end

def decode_morse_word(morse_word)
    morse_chars = morse_word.split
    morse_chars.map { |char| decode_morse_char(char) }.join
end
