require_relative "boot"

refund = PagSeguro::Refund.new
refund.transaction_code = "D5D5BE444148407891E497B421975599"

response = refund.register

if response.errors.any?
  puts response.errors.join("\n")
else
  puts "=> REFUND RESPONSE"
  puts response.result
end
