class Compliment

  attr_reader :image, :color
  attr_accessor :message

  IMAGES = [
      "img/brad_pitt.gif",
      "img/colbert_nothing_wrong.gif",
      "img/patrick_stewart.gif",
      "img/super_star.gif",
      "img/nerd_cat.gif",
      "img/weirdo.gif",
      "img/beard.gif",
      "img/urkle.gif",
      "img/pharrell.gif",
      "img/swag.gif",
      "img/reno_pride.gif",
      "img/thor.gif",
      "img/omg.gif",
      "img/love.gif",
      "img/yay.gif",
      "img/friend_dance.gif",
      "img/tina_fey.gif"]
  
  COLORS = [
      "#007c7c",
      "#ff5b51",
      "#ff0079",
      "#00c8c8",
      "#00cccb",
      "#c7d0d5", 
      "#93b1c6", 
      "#f5f5f5", 
      "#e2da99", 
      "#edd5d1", 
      "#dde0cd", 
      "#ff9900",
      "#b81d18", 
      "#004687", 
      "#1fda9a", 
      "#e9bc1b", 
      "#ffd452", 
      "#75a3d1",
      "#eb65a0",   
      "#000000"]
  
  def initialize (compliment)
    @message = compliment.sample
    @image = IMAGES.sample
    @color = COLORS.sample
  end

end