require 'sinatra'

get '/' do
 erb :index
end

post '/' do

redirect "/anagrams/#{params[:word]}"
end


get '/anagrams/:word' do
  @word = params[:word]
  @length = @word.length
  @perms = (1..@word.length).inject(:*)
  @anagram_results = Word.anagram_generator(@word)
  erb :show
end
