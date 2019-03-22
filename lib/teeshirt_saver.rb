# require_relative "../bin/setup"
# require 'bundle install'
puts "help"
require "bundler/setup"
require "open-uri"
require "nokogiri"


require_relative "./teeshirt_saver/version"
require_relative "./teeshirt_saver/product"
require_relative "./teeshirt_saver/cli"
require_relative "./teeshirt_saver/scraper"

# module TeeshirtSaver
#   class Error < StandardError; end
#   # Your code goes here...

# end
