require 'rspec'

puts "Enter a word, any word:"
word = gets.chomp
def anagram(word)
  length = word.length
  puts "Your word has #{length} characters."

  perms = (1..length).inject(:*)
  puts "There are #{perms} permutations for your chosen word"

  variations = word.chars.to_a
  print variations.permutation.to_a.join.gsub(/(.{#{length}})/, '\1 ')

end

anagram(word)
