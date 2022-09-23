require_relative "./purchase"

purchase = AddConfigure::Purchase.build
purchase.()

another_purchase = AddConfigure::Purchase.new
another_purchase.()
