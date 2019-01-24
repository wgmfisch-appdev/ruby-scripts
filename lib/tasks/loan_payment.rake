desc "Calculate monthly loan payments"
task :loan_payment do
  path_to_text = Rails.root + "lib/input_files/loan_payment_apr.txt"
  apr = open(path_to_text).read.gsub(/\s+/, "")
  ap("APR: " + apr)
  path_to_text = Rails.root + "lib/input_files/loan_payment_years.txt"
  years = open(path_to_text).read.gsub(/\s+/, "")
  ap("Number of Years: " + years)
  path_to_text = Rails.root + "lib/input_files/loan_payment_principal.txt"
  principal = open(path_to_text).read.gsub(/\s+/, "")
  ap("Principal: " + principal)
  months_remaining = years.to_f * 12
  rate = apr.to_f/12/100
  pv = principal.to_f
  payment = (rate*pv)/(1-(1+rate)**(-1*months_remaining))
  ap("Monthly Payment: $" + payment.round(2).to_s)

end
