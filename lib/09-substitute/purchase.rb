require 'dependency'
require_relative './charge'

module Substitute
  class Purchase
    include Dependency

    dependency :charge, Charge

    def self.build
      new.tap do |instance|
        instance.configure
      end
    end

    def self.call
      instance = build
      
      instance.()
    end
    
    def configure
      Charge.configure(self)
    end
    
    def call
      puts "09 - Purchase flow before charging"

      charge.()

      puts "09 - Purchase flow after charging"
    end
  end
end
