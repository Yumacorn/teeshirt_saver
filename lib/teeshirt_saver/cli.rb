#CLI Controller
class TeeshirtSaver::CLI
    def call
      intro
      list_products
      menu
      goodbye
    end

    def intro
      puts "Welcome! Here you will find a list of today's Final Clearance Products from Teeturtle.com"
      puts "You can search through the listings and select a product to learn more."
      puts "\n---Final Clearance Products---"
    end

    def list_products
      #Returns array of product instances to operate on
      @products = TeeshirtSaver::Product.today

      #Prints list of products array
      @products.each.with_index(1) do |product, i|
        puts "#{i}. #{product. name} - #{product.price} - Originally: #{product.original_price} - #{product.tag}"
      end
    end

    def menu
      input = nil
      while input != "exit"
        puts "\nSelect a product by number, list products by typing list, or type exit to leave:"
        input = gets.strip.downcase

        if input.to_i > 0
          TeeshirtSaver::Product.display(input.to_i)
        elsif input == "list"
          list_products
        else
          puts "Unable to process request, please type a product by number, list or exit."
        end
      end
    end

    def goodbye
      puts "Thank you for visiting! Have a nice day!"
    end
end
