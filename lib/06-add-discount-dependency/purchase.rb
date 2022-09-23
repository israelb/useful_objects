require_relative './charge'
require 'mimic'

module AddDiscountDependency
  class Purchase
    # return an operational instance
    def self.build
      new.tap do |instance|
        instance.configure
      end
    end

    def charge
      if @charge.nil?
        return Mimic.(Charge)
      end
      
      @charge
    end

    def charge=(val)
      @charge = val
    end

    def configure
      # double dispatch (encapsulation) tell don't ask
      Charge.configure(self)
    end

    def call
      puts "06 - Purchase flow before charging"

      charge.()

      puts "06 - Purchase flow after charging"
    end
  end
end
