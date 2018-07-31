=begin
    Polybius square cipher
    Created by Ernesto Velasco González
    https://github.com/vegonz
=end

$key_square = [
    ["P","H","Q","G","M"],
    ["E","A","Y","L","N"],
    ["O","F","D","X","K"],
    ["R","C","V","S","Z"],
    ["W","B","U","T","I"]]

def encode
    puts "Write the text you want to encode..."
    decoded_text = gets.chomp
    n1 = 0
        n2 = 0
    decoded_text.upcase.each_byte do |l|
        $key_square.each do |i|
            i.each do |j|
                print "#{n1}#{n2}" unless l.chr != j;
                n2 += 1
            end
            n2 = 0
            n1 += 1
        end
        n1 = 0
    end
end

def decode
    puts "Write the encoded text..."
    encoded_text = gets.chomp
    encoded_text.scan(/../).each do |l|
        l.split(//)
        print $key_square[l[0].to_i][l[1].to_i]
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