require 'rubygems'
require 'nokogiri'
require 'open-uri'


class Scraper
  attr_reader :html

  def initialize(url)
  download = open(url)
  @html = Nokogiri::HTML(download)
  end

  def get_compliments
    html.search('div.post-body').collect do |compliment|
      puts compliment.text
    end
  end

end

my_compliments = Scraper.new('http://peoplearenice.blogspot.com/p/compliment-list.html')
puts my_compliments.get_compliments


