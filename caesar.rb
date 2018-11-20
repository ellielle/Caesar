character_code = 0
ciphered_string = ""
puts "Enter message followed by a comma, and the cipher key: "
str = gets.chomp
cipher = str.split(",")

#A = 65, Z = 90, a = 97, z = 122
cipher[0].each_char do |c|
  character_code = c.ord.to_i + cipher[1].to_i
  if (c.ord >=65 && c.ord <= 90)
    if (character_code > 90)
      ciphered_string += ((character_code % 90) + 64).chr
    else
      ciphered_string += character_code.chr
    end
  elsif (c.ord >= 97 && c.ord <= 122)
    if (character_code > 122)
      ciphered_string += ((character_code % 122) + 96).chr
    else
      ciphered_string += character_code.chr
    end
  else
    ciphered_string += c
  end
end
puts
puts ciphered_string