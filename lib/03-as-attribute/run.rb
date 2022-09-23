require_relative "./purchase"

charge = AsAttribute::Charge.new

purchase = AsAttribute::Purchase.new
purchase.charge = charge

purchase.()

another_purchase = AsAttribute::Purchase.new
another_purchase.()
