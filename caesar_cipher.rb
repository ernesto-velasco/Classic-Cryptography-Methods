=begin
    Caesar cipher
    Created by Ernesto Velasco González
    https://github.com/vegonz
=end

def encode
    puts "Write the text you want to encode..."
    decoded_text = gets.chomp
    puts "Number of positions to move"
    positions_to_move = gets.chomp
    encoded_text = ""
    decoded_text.upcase.each_byte do |c|
        counter = 1
        until counter == positions_to_move.to_i do
            if c.to_i != 65
                c = c.to_i - 1
            else
                c = 90
            end
            counter += 1
        end
        encoded_text = encoded_text << c.to_i.chr
    end
    puts "Encoded: #{encoded_text}"
end

def decode
    puts "Write the encoded text..."
    encoded_text = gets.chomp
    puts "Number of positions to move"
    positions_to_move = gets.chomp
    decoded_text = ""
    encoded_text.upcase.each_byte do |c|
        counter = 1
        until counter == positions_to_move.to_i do
            if c.to_i != 90
                c = c.to_i + 1
            else
                c = 65
            end
            counter += 1
        end
        decoded_text = decoded_text << c.to_i.chr
    end
    puts "Decoded text: #{decoded_text}"
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




