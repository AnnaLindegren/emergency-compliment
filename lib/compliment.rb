class Compliment

  attr_reader :message, :color, :image

  def make_hash_message
    f = File.open('./lib/compliments.txt')
    message_array = Array.new
    f.each_line do |line| 
      message_array << line
    end
    @message_hash = Hash.new
    message_array.each_with_index do |line, idx|
      idx +=1 
      @message_hash[idx] = line
    end
    @message_hash
  end

  def make_hash_color
    color_array = [
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
    @color_hash = Hash.new
    color_array.each_with_index do |col, idx|
      idx +=1 
      @color_hash[idx] = col
    end
    @color_hash
  end

  def make_hash_image
    image_array = [
      "/img/brad_pitt.gif",
      "/img/colbert_nothing_wrong.gif",
      "/img/patrick_stewart.gif",
      "/img/super_star.gif",
      "/img/nerd_cat.gif",
      "/img/weirdo.gif",
      "/img/beard.gif",
      "/img/urkle.gif",
      "/img/pharrell.gif",
      "/img/swag.gif",
      "/img/reno_pride.gif",
      "/img/thor.gif",
      "/img/omg.gif",
      "/img/love.gif",
      "/img/yay.gif",
      "/img/friend_dance.gif",
      "/img/tina_fey.gif"]
    @image_hash = Hash.new
    image_array.each_with_index do |img, idx|
      idx +=1 
      @image_hash[idx] = img
    end
    @image_hash
  end

  def message
    @message = @message_hash.to_a.sample
  end

  def color
    @color = @color_hash.to_a.sample
  end

  def image
    @image = @image_hash.to_a.sample
  end

end
