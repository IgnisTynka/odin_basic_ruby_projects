def letter? (char)
    char.match?(/[[:alpha:]]/)
end

def upcase?(letter)
    letter == letter.upcase
end

def caesar_cipher (orginal_string, shift_factor)
    encrypted_string = ""
    orginal_string.each_char{|letter|
        if letter?(letter)
            if upcase?(letter)
                encrypted_string += ((letter.ord + shift_factor - 65)%26 + 65).chr
            else 
                encrypted_string += ((letter.ord + shift_factor - 97)%26 + 97).chr
            end 
        else
            encrypted_string += letter
        end
    }
    puts encrypted_string
end

caesar_cipher(orginal_string, shift_factor)