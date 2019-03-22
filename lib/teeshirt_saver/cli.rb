#CLI Controller
class TeeshirtSaver::CLI
    def call
      intro
      menu
      goodbye
    end

    def intro
      puts "\n\nWelcome! Here you will find a list of today's Final Clearance Products from Teeturtle.com"
      puts "You can search through the listings and select a product to learn more."
      puts "\n---Final Clearance Products---"
      list_products
    end

    def list_products
      TeeshirtSaver::Product.list_products
    end

    def menu
      input = nil
      while input != "exit"
        puts "\nSelect a product by number, list products by typing list, sort products by typing sorted, or type exit to leave:"
        input = gets.strip.downcase

        if input.to_i > 0
          TeeshirtSaver::Product.display_detail(input.to_i)
        elsif input == "list"
          TeeshirtSaver::Product.list_products
        elsif input == "exit"
          return
        elsif input == "sorted"
          TeeshirtSaver::Product.display_alphabetically
        else
          puts "Unable to process request, please type a product by number, list, sorted, or exit."
        end
      end
    end

    def goodbye
      puts "Thank you for visiting! Have a nice day!"
    end
end
