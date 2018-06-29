require 'pry'
class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    if params[:age].nil?
      @comedians = Comedian.all
    else
      @comedians = Comedian.where(age: params[:age])
    end
    erb :'comedians/index'
  end
end
