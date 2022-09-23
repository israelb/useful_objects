module AddConfigure
  class Charge
    # Has a responsability to understand how to construct itself
    def self.configure(receiver)
      instance = build
      receiver.charge = instance
    end

    def self.build
      new
    end
    
    def call
      puts "05 - Charged"
    end
  end
end
