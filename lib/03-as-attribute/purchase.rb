require_relative './charge'

module AsAttribute
  class Purchase   
    attr_accessor :charge

    def call
      puts "03 - Purchase flow before charging"

      charge.()

      puts "03 - Purchase flow after charging"
    end
  end
end
