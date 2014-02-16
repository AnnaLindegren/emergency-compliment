class Compliment

  attr_reader :message, :image, :color
  
  MESSAGES = [
      "You're awesome!",
      "I'm gonna follow you on twitter.",
      "You look great, even if you are balding a bit.",
      "Call me, maybe?",
      "Damn, you fine!", 
      "You deserve donuts!",
      "I like the way you move!", 
      "Good job being you!", 
      "Your magic deck is unbeatable!", 
      "I'd trade a black lotus card for you!",
      "You deserve a promotion!",
      "Good effort!",
      "What a fine sweater!",
      "I appreciate all of your opinions.",
      "I like your style.",
      "With your creative wit, I'm sure you could come up with better compliments than me.",
      "Your T-shirt smells fresh.",
      "I love what you've done with the place.",
      "You are like a spring flower; beautiful and vivacious.",
      "I am utterly disarmed by your wit.",
      "I really enjoy the way you pronounce the word 'ruby'.",
      "You complete me.",
      "Well done!",
      "I like your Facebook status.",
      "You should be a poster child for poster children.",
      "You have a good web-surfing stance.",
      "Nice motor control!",
      "You have a good taste in websites.",
      "Your mouse told me that you have very soft hands."]
  
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
  
  def initialize
    @message = MESSAGES.sample
    @image = IMAGES.sample
    @color = COLORS.sample
  end

end