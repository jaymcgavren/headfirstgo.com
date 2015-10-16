class Invoice
  attr_accessor :subtotal
  def total
    subtotal + fees(subtotal, 0.15, 25.00)
  end
private
  def fees(amount, percentage, flat_rate)
    amount * percentage + flat_rate
  end
end

# This works, because it's calling a public method.
invoice = Invoice.new
invoice.subtotal = 500.00
p invoice.total

# This will fail with an error, because it's attempting to call a private
# method.
fee = Invoice.new.fees(300, 0.08)
