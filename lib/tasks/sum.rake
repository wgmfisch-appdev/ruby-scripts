desc "Calculate sum"
task :sum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)
  ap("Your Numbers")
  ap(numbers)
  ap("This is the un-fun way to do this: " + numbers.sum.to_s)
  sum_total = 0
  numbers.each do |num|
    sum_total = sum_total + num
  end
  ap("This is my final total: " + sum_total.to_s)
end
