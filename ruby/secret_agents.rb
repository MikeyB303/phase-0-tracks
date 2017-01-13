#Encrypt method:
    #take user input
    #count figures in string
    #apply .next method to each figure, with loop set = to number of figures in string
        #if figure is a space, move past it
    #print results
user_input = ""
def encrypt (user_input)
    
    input_length = user_input.length
    encrypted_input = ""
    
    counter = 0
    while counter < input_length
        encrypted_input += user_input[counter].next
            
        counter += 1
    end
    puts encrypted_input
end
#Decrypt method:
    #take encrypted string
    #call for the alphabet index value of each letter in the encrypted string.
    #subtract one from each index value returned, and store in a new variable.
    #print the new variable.
encrypted_input = ""
def decrypt (encrypted_input)
    encrypted_input_length = encrypted_input.length
    decrypted_password = ""
    encrypt_counter = 0
    while encrypt_counter < encrypted_input_length
        encrypted_letter = encrypted_input[encrypt_counter]
        processing_index = "abcdefghijklmnopqrstuvwxyz".index(encrypted_letter)
        decrypted_index = processing_index - 1
        decrypted_password += "abcdefghijklmnopqrstuvwxyz"[decrypted_index]
        encrypt_counter += 1
    
    end
    puts decrypted_password
end
encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")