require './lib/enigma'

enigma = Enigma.new

files_key_date = ARGV

encrypted_message_file = File.open("#{files_key_date[0]}", "r")

encrypted_message = encrypted_message_file.read

decrypted_message_hash = enigma.decrypt(encrypted_message, files_key_date[2], files_key_date[3])

decrypted_message = decrypted_message_hash[:decryption]

decrypted_file = File.open("#{files_key_date[1]}", "w")

decrypted_file.write(decrypted_message)

puts "Created 'decrypted.txt' with the key #{enigma.key} and date #{enigma.date}"
