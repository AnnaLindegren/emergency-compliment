require 'bundler'
Bundler.require
require './lib/compliment'

class App < Sinatra::Application
  
  get '/' do 
    f = File.open('./lib/compliments.txt')
    @compliments = Array.new
    f.each_line do |line| 
      @compliments << line
    end

    new_compliment = Compliment.new(@compliments)
    @message = new_compliment.message
    @image = new_compliment.image
    @color = new_compliment.color
    erb :compliment
  end

end
