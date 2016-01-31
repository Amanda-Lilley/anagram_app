class Word < ActiveRecord::Base



  def self.anagram_generator(word)

    @length = word.length
    #puts "Your word has #{@length} characters."

    @perms = (1..@length).inject(:*)
    #puts "There are #{perms} permutations for your chosen word"

    @anagram_results = word.chars.to_a.permutation.map(&:join)
  #  @anagram_results.each { |x| puts x }
     return @anagram_results

  end

end
