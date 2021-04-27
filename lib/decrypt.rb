require './lib/enigma'

enigma = Enigma.new

files_key_date = ARGV

encrypted_message_file = File.open("#{files_key_date[0]}", "r")

encrypted_message = encrypted_message_file.read

date_conv_part_0 = files_key_date[3].dup

date_conv_part_1 = date_conv_part_0.insert(2, "-")

date_conv_part_2 = date_conv_part_1.insert(5, "-")

date = date_conv_part_2.insert(6, "20")

decrypted_message_hash = enigma.decrypt(encrypted_message, files_key_date[2], date)

decrypted_message = decrypted_message_hash[:decryption]

decrypted_file = File.open("#{files_key_date[1]}", "w")

decrypted_file.write(decrypted_message)

puts "Created 'decrypted.txt' with the key #{enigma.converted_key.key} and date #{enigma.date}"
