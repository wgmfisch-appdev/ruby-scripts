desc "Calculate sum"
task :sum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # SUM
  # ===

  # To find the sum of a set of numbers,
  #  - we start with 0
  #  - for each number in the set,
  #    - we add it to the running total
  #  - after we've looked at every number, the running total is the sum
end
