require_relative './charge'

module AddConfigure
  class Purchase   
    attr_accessor :charge

    # return an operational instance
    def self.build
      new.tap do |instance|
        instance.configure
      end
    end

    def configure
      # double dispatch (encapsulation) tell don't ask
      Charge.configure(self)
    end

    def call
      puts "05 - Purchase flow before charging"

      charge.()

      puts "05 - Purchase flow after charging"
    end
  end
end
