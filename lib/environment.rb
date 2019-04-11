# require "lakers_players/version"

require_relative './lakers_players/version'
require_relative './lakers_players/cli'
require_relative './lakers_players/scraper'
require_relative './lakers_players/player'


require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'


module LakersPlayers
  class Error < StandardError; end
  # Your code goes here...
end
