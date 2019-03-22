# require_relative "../bin/setup"
# require 'bundle install'
require "bundler/setup"
require "open-uri"
require "nokogiri"
require 'pry'


require_relative "./teeshirt_saver/version"
require_relative "./teeshirt_saver/product"
require_relative "./teeshirt_saver/cli"
require_relative "./teeshirt_saver/scraper"

# module TeeshirtSaver
#   class Error < StandardError; end
#   # Your code goes here...

# end
