require 'bundler'
Bundler.require
require './lib/compliment'

class App < Sinatra::Application

  enable :sessions
  
  get '/' do 
    @message = [
      "You seem awesome. I'm gonna follow you on twitter.",
      "You look great, even if you are balding a bit.",
      "Call me, maybe?",
      "Damn, you fine!", 
      "You deserve donuts!",
      "I like the way you move!", 
      "Good job being you!", 
      "Your magic deck is unbeatable!", 
      "I'd trade a black lotus card for you!"].sample
    @image = [
      "img/brad_pitt.gif",
      "img/colbert_nothing_wrong.gif",
      "img/patrick_stewart.gif",
      "img/super_star.gif",
      "img/tina_fey.gif"].sample
    @color = [
      "#007c7c",
      "#ff5b51",
      "#ff0079",
      "#00c8c8",
      "#00cccb", 
      "#000000"].sample
    erb :compliment
  end

end

