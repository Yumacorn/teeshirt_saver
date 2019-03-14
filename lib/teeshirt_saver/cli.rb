#CLI Controller
class TeeshirtSaver::CLI
    def call
      puts "Final Clearance Products"
      list_products
      menu
      goodbye
    end

    def list_products
      puts <<-HERE.gsub /^\s*/, ''
        1. LOVE               $9.99       Original: $24      58% OFF
        2. HAY GURL           $9.99       Original: $24      58% OFF
      HERE
    end

    def menu
      input = nil
      while input != "exit"
        input = gets.strip.downcase
        puts "Enter the number of the product you would like to open or type list to see the product list again or type exit to leave:"
        case input
          when "1"
            puts "More info on product 1..."
          when "2"
            puts "More info on product 2..."
          when "list"
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
