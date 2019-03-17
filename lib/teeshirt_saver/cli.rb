#CLI Controller
class TeeshirtSaver::CLI
    def call
      list_products
      menu
      goodbye
    end

    def list_products
      puts "\n---Final Clearance Products---"
      puts "Select a product by number, list products by typing list, or type exit to leave:"
      @products = TeeshirtSaver::Product.today
      @products.each.with_index(1) do |product, i|
        puts "#{i}. #{product. name} - #{product.price} - Originally: #{product.original_price} - #{product.tag}"
      end
    end

    def menu
      input = nil
      while input != "exit"
        puts "Enter the number of the product you would like to open or type list to see the product list again or type exit to leave:"
        input = gets.strip.downcase

        if input.to_i > 0
          puts @products[input.to_i-1]
        elsif input == "list"
          list_products
        else
          puts "Unable to process request, please type list or exit."
        end
      end
    end

    def goodbye
      puts "Thank you for visiting! Have a nice day!"
    end
end
