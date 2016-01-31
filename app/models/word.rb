class Word < ActiveRecord::Base



  def self.anagram_generator(word)
    @length = word.length
    @perms = (1..@length).inject(:*)
    @anagram_results = word.chars.to_a.permutation.map(&:join)
  #  @anagram_results.each { |x| puts x }
     return @anagram_results
  end

end
