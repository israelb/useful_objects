require 'byebug'

module Substitute
  class Charge
    def self.configure(receiver)
      instance = build
      receiver.charge = instance
    end

    def self.build
      new
    end

    def call
      puts "Charged"
    end

    module Substitute
      def self.build
        Substitute::Charge.build
      end

      class Charge
        def self.build
          new
        end

        def call
          puts "Substitute charged"
        end
      end
    end
  end
end
