require 'rspec'
require 'sinatra'

puts "Enter a word, any word:"
word = gets.chomp
def anagram(word)

  length = word.length
  puts "Your word has #{length} characters."

  perms = (1..length).inject(:*)
  puts "There are #{perms} permutations for your chosen word"

  anagram_results = word.chars.to_a.permutation.map(&:join)
  anagram_results.each { |x| puts x }

end

anagram(word)
