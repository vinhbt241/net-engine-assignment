require 'digest'

filename = 'mystery_asterisk_destination_2x.png'
img_sha256 = Digest::SHA256.hexdigest(File.read(filename))
# SHA256 of input image: 8af6a0311314dffab750ce42edabd724e42cce7ca754605c41d908f35c91dfd3
puts "Produce SHA256 hash from file #{filename}: \n#{img_sha256}"
puts "********************\n"

first_ten_chars = img_sha256[0...10]
# First ten characters: 8af6a03113
puts "Took first ten characters as hexadecimal number: \n#{first_ten_chars}"
puts "********************\n"


HEX_BASE = %w[0 1 2 3 4 5 6 7 8 9 a b c d e f]
num = 0
exp = 0

first_ten_chars.chars.reverse.each do |c|
  num += HEX_BASE.find_index(c) * (16 ** exp)
  exp += 1
end
# Convert ten characters to base 10: 596843180307
puts "Convert hexadecimal number to decimal number: \n#{num.to_s}"