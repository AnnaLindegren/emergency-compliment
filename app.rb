require 'bundler'
Bundler.require
require './lib/compliment'

class App < Sinatra::Application
  
  get '/' do 
    new_compliment = Compliment.new
    new_compliment.make_hash_message
    new_compliment.make_hash_color
    new_compliment.make_hash_image
    
    message_init = new_compliment.message
    @mess = message_init[0]
    @message = message_init[1]
    
    color_init = new_compliment.color
    @col = color_init[0]
    @color = color_init[1]
    
    image_init = new_compliment.image
    @img = image_init[0]
    @image = image_init[1]
    
    erb :compliment
  end

  get '/:message/:color/:image' do
    new_compliment = Compliment.new
    message = params[:message]
    color = params[:color]
    image = params[:image]

    mess = new_compliment.make_hash_message
    @message = mess[message.to_i]
    @mess = message

    col = new_compliment.make_hash_color
    @color = col[color.to_i]
    @col = color

    img = new_compliment.make_hash_image
    @image = img[image.to_i]
    @img = image
    
    erb :compliment
  end

end
