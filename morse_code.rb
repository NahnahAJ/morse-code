# Create a method to decode a Morse code character,
# takes a string parameter, and return the corresponding character in uppercase

# Morse code translation list
@translations = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
  '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
  '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
}

# Create a method to decode a Morse code character
def decode_char(morse_code)
  # Your code here
  @translations[morse_code]
end
# (e.g. decode_char(".-") returns "A").
decode_char('...')

# Create a method to decode an entire word in Morse code,
# takes a string parameter, and return the string representation.
# Every character in a word will be separated by a single space (e.g. decode_word("-- -.--") returns "MY").
def decode_word(morse_word)
  # Your code here
  morse_word = morse_word.split
  morse_word = morse_word.map { |char| decode_char(char) }
  morse_word.join
end
decode_word('-- -.--')

# Create a method to decode the entire message in Morse code,
# takes a string parameter, and return the string representation.
# Every word will be separated by 3 spaces (e.g.   decode("-- -.--   -. .- -- .") returns "MY NAME").
def decode(morse_message)
  # Your code here
  morse_message = morse_message.split
  morse_message = morse_message.map { |word| decode_word(word) }
  morse_message.join
end
decode('-- -.--   -. .- -- .')
decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
