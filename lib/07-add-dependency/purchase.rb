require_relative './charge'
require 'dependency'

module AddDependency
  class Purchase   
    include Dependency
    
    dependency :charge, Charge

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
      puts "07 - Purchase flow before charging"

      charge.()

      puts "07 - Purchase flow after charging"
    end
  end
end
