class TeeshirtSaver::Product

  def self.today
    #List out a set of product instances for today
    puts <<-HERE.gsub /^\s*/, ''
      1. LOVE               $9.99       Original: $24      58% OFF
      2. HAY GURL           $9.99       Original: $24      58% OFF
    HERE
  end

end
