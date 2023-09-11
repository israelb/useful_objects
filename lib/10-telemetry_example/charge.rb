# require 'byebug'
require_relative "../../init"
require 'dependency'
require 'telemetry'

module TelemetryExample
  class Charge
    include Dependency

    dependency :telemetry, ::Telemetry

    def self.configure(receiver)
      receiver.charge = build
    end

    def self.build
      new.tap do |instance|
        ::Telemetry.configure(instance)
      end
    end
    
    def call
      do_some_destructive_side_effect
    end
    
    def do_some_destructive_side_effect
      telemetry.record(:do_some_destructive_side_effect)

      puts "10 - real world Charged"    
    end

    module Telemetry
      class Sink
        include ::Telemetry::Sink
  
        record :do_some_destructive_side_effect
      end
  
      def self.sink
        Sink.new
      end
    end
  
    def self.register_telemetry_sink(something)
      sink = Telemetry.sink
      something.telemetry.register(sink)
      sink
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
