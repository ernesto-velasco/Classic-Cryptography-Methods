=begin
    Spartan scytale cipher
    Created by Ernesto Velasco González
    https://github.com/vegonz
=end

def encode
    puts "Write the text you want to encode..."
    decoded_text = gets.chomp
    puts "Number of faces"
    faces = gets.chomp
    rows = (decoded_text.length / faces.to_i)
    decoded_text.split(//)
    print "Encoded text: "
    rows.to_i.times do |i|
        faces.to_i.times do |j|
            print decoded_text[j * rows + i]
        end
    end
end

def decode
    puts "Write the encoded text..."
    encoded_text = gets.chomp
    puts "Number of faces"
    faces = gets.chomp
    rows = (encoded_text.length / faces.to_i)
    encoded_text.split(//)
    print "Decoded text: "
    faces.to_i.times do |i|
        rows.to_i.times do |j|
            print encoded_text[j * faces.to_i + i]
        end
    end
end

puts "Select one of the options"
puts "1 .- Encode"
puts "2 .- Decode"
choice = gets.chomp
case choice
when "1" then encode
when "2" then decode
else puts "Error! It seems that you did not enter a valid value."
end