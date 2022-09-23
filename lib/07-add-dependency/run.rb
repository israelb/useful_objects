require_relative "./purchase"

purchase = AddDependency::Purchase.build
purchase.()

another_purchase = AddDependency::Purchase.new
another_purchase.()
