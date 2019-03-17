class TeeshirtSaver::Product
  attr_accessor :name, :price, :original_price, :url, :tag
  @@all = []

  def initialize
    @@all << self
  end

  def self.today
    #List out a set of product instances for today
    # puts <<-HERE.gsub /^\s*/, ''
    #   1. LOVE               $9.99       Original: $24      58% OFF
    #   2. HAY GURL           $9.99       Original: $24      58% OFF
    # HERE

    product_1 = self.new
    product_1.name = "LOVE"
    product_1.price = "$9.99"
    product_1.original_price = "$24"
    product_1.url = "https://www.teeturtle.com/products/love"
    product_1.tag = "58% OFF"

    product_2 = self.new
    product_2.name = "HAY GURL"
    product_2.price = "$9.99"
    product_2.original_price = "$24"
    product_2.url = "https://www.teeturtle.com/products/hay-gurl"
    product_2.tag = "58% OFF"

    @@all = [product_1, product_2]
  end

  # def self.all
  #   @@all
  # end

  def self.list_products
    #Returns array of product instances to operate on
    @products = TeeshirtSaver::Product.today

    #Prints list of products array
    @products.each.with_index(1) do |product, i|
      puts "#{i}. #{product. name} - #{product.price} - Originally: #{product.original_price} - #{product.tag}"
    end
  end

  def self.display(product_number)
    selection = @@all[product_number-1]

    #Response for non-existent product
    if selection == nil
      return puts "This product was not found. Please make a new selection from the list."
    end

    #Display selected product
    puts "#{product_number}. #{selection.name} - #{selection.price} - Originally: #{selection.original_price} - #{selection.tag}"
  end
end
