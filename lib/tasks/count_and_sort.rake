desc "Count and sort numbers"
task :count_and_sort do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  string_input = open(path_to_file).read.chomp
  numbers = string_input.gsub(",", "").split.map(&:to_f)

  ap("Your Numbers:")
  ap(numbers)
  ap("Count: " + numbers.count.to_s)
  ap("Sorted Numbers:")
  ap(numbers.sort)

end
