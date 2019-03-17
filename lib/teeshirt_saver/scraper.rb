# require_relative './course.rb'

class Scraper
  def get_page
    doc = Nokogiri::HTML(open("https://www.teeturtle.com/collections/clearance"))
  end

  def get_products
    self.get_page.css(".product")
  end

  def make_products
    #Attributes to populate :name, :price, :original_price, :url, :tag
    self.get_products.each do |item|
      product = Product.new
      product.name = item.css("h5").text
      product.price = item.css(".price sale").text
      product.original_price = item.css(".compare-at-price").text
      product.url = item.css("h2").text
      product.tag = item.css(".sale-tag").text

      # product.schedule = item.css(".date").text
      # product.description = item.css("p").text
    end
  end

#   def print_courses
#     self.make_courses
#     Course.all.each do |course|
#       if course.title
#         puts "Title: #{course.title}"
#         puts "  Schedule: #{course.schedule}"
#         puts "  Description: #{course.description}"
#       end
#     end
#   end
end
# Scraper.new.print_courses
