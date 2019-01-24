desc "Calculate mean"
task :mean do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)
  ap("Your Numbers")
  ap(numbers)
  mean = numbers.sum.to_f / numbers.count
  ap("Mean: " + mean.to_s)

end
