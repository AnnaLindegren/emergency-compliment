require 'bundler'
Bundler.require
require './lib/compliment'

class App < Sinatra::Application

  get '/compliments' do 
    @message = ["You look awesome!", "I'm proud of you!", "Good job being you!", "Your magic deck is unbeatable!", "I'd trade a black lotus card for you!"].sample
    @image = ['http://imgs.abduzeedo.com/files/articles/baby-animals/Baby-Animals-011.jpg', 'https://terri0729.files.wordpress.com/2012/05/funny-animal-gifs-animal-gifs-the-masked-avenger-strikes-back.gif', 'http://cdn.arkarthick.com/wp-content/uploads/2010/04/blissfully-cute-baby-animals-baby-bunny-5.jpg', 'http://cdn.cutestpaw.com/wp-content/uploads/2012/05/l-baby-Polar-bear1.jpg'].sample
    erb :compliment
  end

end

