desc "Calculate median"
task :median do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)
  ap("Your Numbers")
  ap(numbers)
  sorted_numbers = numbers.sort
  median_array = []
  if sorted_numbers.count.odd?
    index = sorted_numbers.count/2
    median = sorted_numbers.at(index.to_i)
  else
    index = sorted_numbers.count/2 + 0.5
    median_array[0] = sorted_numbers.at(index.to_i)
    median_array[1] = sorted_numbers.at(index.to_i-1)
    median = median_array.sum / 2
  end
  ap("Median: " + median.to_s)
end
