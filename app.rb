require 'bundler'
Bundler.require
require './lib/compliment'

class App < Sinatra::Application
  
  get '/' do 
    new_compliment = Compliment.new
    @message = new_compliment.message
    @image = new_compliment.image
    @color = new_compliment.color
    erb :compliment
  end

end

