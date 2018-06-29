require 'pry'
class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    if params[:age].nil?
      @comedians = Comedian.all.includes(:specials)
    else
      @comedians = Comedian.where(age: params[:age]).includes(:specials)
    end
    erb :'comedians/index'
  end
end
