require_relative "./purchase"

# Substitute
purchase = TelemetryExample::Purchase.new
purchase.()

# Real world
# TelemetryExample::Purchase.()

purchase = TelemetryExample::Purchase.build
# sink = TelemetryExample::Charge.register_telemetry_sink(purchase)
purchase.()

pp purchase
# pp sink


charge = TelemetryExample::Charge.build
sink = TelemetryExample::Charge.register_telemetry_sink(charge)
charge.()
pp sink.recorded_do_some_destructive_side_effect?
