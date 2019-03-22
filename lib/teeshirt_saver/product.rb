class TeeshirtSaver::Product
  attr_accessor :name, :price, :original_price, :url, :tag
  @@all = []

  def self.today
    todays_products = TeeshirtSaver::Scraper.make_products
    todays_products.each {|item| @@all << item}
  end

  def self.list_products
    #Returns array of product instances to operate on
    products = TeeshirtSaver::Product.today

    #Prints list of products array
    products.each_with_index {|product, i| display(i+1)}
  end

  def self.valid_product?(product_number)
    selection = @@all[product_number-1]
    #Response for non-existent product
    if selection == nil
      puts "Product \"#{product_number}\" was not found. Please make a new selection from the list."
      return false
    else
      return true
    end
  end

  def self.display(product_number)
    selection = @@all[product_number-1]
    if valid_product?(product_number) != false
      #Display selected product
      puts "#{product_number}. #{selection.name} - #{selection.price} - Originally: #{selection.original_price} - #{selection.tag}"
    end
  end

  def self.display_detail(product_number)
    selection = @@all[product_number-1]
    if valid_product?(product_number) != false
      #Display selected product with details
      puts "#{product_number}. \"#{selection.name}\""
      puts "    Price:          #{selection.price}"
      puts "    Original Price: #{selection.original_price}"
      puts "    #{selection.tag}"
      puts "    URL: #{selection.url}"
    end
  end
end
