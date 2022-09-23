require_relative './charge'

module Harcoded
  class Purchase    
    def call
      puts "Purchase flow before charging"

      charge = Charge.new
      charge.()

      puts "Purchase flow after charging"
    end
  end
end
