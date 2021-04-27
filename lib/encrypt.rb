require './lib/enigma'

enigma = Enigma.new

files = ARGV

message_file = File.open("#{files[0]}", "r")

message = message_file.read

encrypted_message_hash = enigma.encrypt(message)

encrypted_message = encrypted_message_hash[:encryption]

encrypted_file = File.open("#{files[1]}", "w")

encrypted_file.write(encrypted_message)

puts "Created 'encrypted.txt' with the key #{enigma.key} and date #{enigma.date}"
