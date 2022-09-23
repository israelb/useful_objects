require_relative "./purchase"

purchase = AddDiscountDependency::Purchase.build
purchase.()

another_purchase = AddDiscountDependency::Purchase.new
another_purchase.()
