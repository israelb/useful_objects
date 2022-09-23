require_relative "./purchase"

purchase = AddConstructor::Purchase.build
purchase.()

another_purchase = AddConstructor::Purchase.new
another_purchase.()
