require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'yaml'

class Scraper
  attr_reader :html, :compliments

  def initialize(url)
  download = open(url)
  @html = Nokogiri::HTML(download)
  end

  def get_compliments
    @compliments = html.search('div.post-body').map {|item| item.text.gsub(/\d+\./, "") }

    File.open("compliments.yaml", "w") do |file|
      file.puts YAML::dump(compliments)
    end
  end

end

my_compliments = Scraper.new('http://peoplearenice.blogspot.com/p/compliment-list.html')
puts my_compliments.get_compliments


