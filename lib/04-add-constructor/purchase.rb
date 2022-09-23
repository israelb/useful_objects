require_relative './charge'

module AddConstructor
  class Purchase   
    attr_accessor :charge

    # return an operational instance
    def self.build
      instance = new

      charge = Charge.new
      instance.charge = charge

      instance
    end

    def call
      puts "04 - Purchase flow before charging"

      charge.()

      puts "04 - Purchase flow after charging"
    end
  end
end
