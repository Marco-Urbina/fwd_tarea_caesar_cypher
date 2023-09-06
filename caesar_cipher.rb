def caesar_cipher(string, shift = 1)

    if string.nil? || string.empty?
        return ""
    end

    alphabet  = Array('a'..'z')
    non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

    alphabet_may  = Array('A'..'Z')
    caps     = Hash[alphabet_may.zip(alphabet_may.rotate(shift))]

    encrypter = non_caps.merge(caps)
    
    result = string.chars.map { |c| encrypter.fetch(c, c) } 
    result.join("")
  end

  p caesar_cipher("",3)

