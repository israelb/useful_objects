require_relative './charge'

module PassIn
  class Purchase   
    def initialize(charge)
      @charge = charge
    end

    def call
      puts "02 - Purchase flow before charging"

      @charge.()

      puts "02 - Purchase flow after charging"
    end
  end
end
