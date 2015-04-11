class Encryptor
  def cipher(rotation)
     characters = (' '..'z').to_a
     rotated_characters = characters.rotate(rotation)
     Hash[characters.zip(rotated_characters)]
  end


  def encrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string, rotation)
    letters = string.split("")
    letters.collect do |letter|
      encrypted_letter = encrypt_letter(letter, rotation)
    end.join
  end 
  
  def decrypt(string, rotation) 
    letters = string.split("")
    rotate = rotation - (rotation * 2) 
    letters.collect do |letter|
      encrypted_letter = encrypt_letter(letter, rotate)
    end.join
   end 

  def encrypt_file(filename, rotation)
    input = File.open(filename, 'r')
    input_read = input.read
    encrypted_text = encrypt(input_read, rotation)
    output = File.open(filename + '.encrypted', 'w')

    output.write(encrypted_text)
    output.close
  end

  def decrypt_file(filename, rotation)
    input = File.open(filename, 'r')
    input_read = input.read
    decrypted_text = decrypt(input_read, rotation)
    output = File.open(filename + '.decrypted', 'w')

    output.write(decrypted_text)
    output.close
   end 

  def crack(message)
    supported_characters.count.times.collect do |attempt|
      decrypt(message,attempt)
    end
  end 

end 