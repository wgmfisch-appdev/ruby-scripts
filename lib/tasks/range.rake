desc "Calculate range"
task :range do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)
  ap("Your Numbers")
  ap(numbers)
  number_range = numbers.max - numbers.min
  ap("Range: " + number_range.to_s)
end
