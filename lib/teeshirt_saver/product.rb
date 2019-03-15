class TeeshirtSaver::Product
  attr_accessor :name, :price, :original_price, :url, :tag

  def self.today
    #List out a set of product instances for today
    puts <<-HERE.gsub /^\s*/, ''
      1. LOVE               $9.99       Original: $24      58% OFF
      2. HAY GURL           $9.99       Original: $24      58% OFF
    HERE

    product_1 = self.new
    product_1.name = "LOVE"
    product_1.price = "$9.99"
    product_1.original_price = "$24"
    product_1.url = "https://www.teeturtle.com/products/love"
    product_1.tag = "58% OFF"

    product_2 = self.new
    product_2.name = "HAY GURL"
    product_1.price = "$9.99"
    product_1.original_price = "$24"
    product_1.url = "https://www.teeturtle.com/products/hay-gurl"
    product_1.tag = "58% OFF"

    [product_1, product_2]
  end
end
