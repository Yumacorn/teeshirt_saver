class TeeshirtSaver::Scraper
  def self.get_page
    doc = Nokogiri::HTML(open("https://www.teeturtle.com/collections/clearance"))
  end

  def self.get_products
    self.get_page.css(".product")
  end

  def self.make_products
    #Instantiate all products from current WEB
    #Attributes to populate :name, :price, :original_price, :url, :tag
    self.get_products.each do |item|

      product = TeeshirtSaver::Product.new
      product.name = item.css("h5").text
      product.price = item.css(".price").text
      product.original_price = item.css(".compare-at-price").text

      #Pick URL of product item.children[1].attributes["href"].value = Secret to getting href
      product.url = "https://www.teeturtle.com" + item.children[1].attributes["href"].value
      product.tag = item.css(".sale-tag").text
      binding.pry

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
