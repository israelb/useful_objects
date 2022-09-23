require_relative "./purchase"

charge = PassIn::Charge.new

purchase = PassIn::Purchase.new(charge)
purchase.()

