class Word < ActiveRecord::Base



  def self.anagram_generator(word)
    @list =[]
    @length = word.length
    @perms = (1..@length).inject(:*)
    @anagram_results = word.chars.to_a.permutation.map(&:join)
    @anagram_results.each do |anagram|
      if Word.find_by_text(anagram).present?
        @list << anagram
      end
    end
    @list
end
end
