get '/' do
  erb :index
end

get '/anagram/:word' do
  @word = params[:word]
  erb :show
end
