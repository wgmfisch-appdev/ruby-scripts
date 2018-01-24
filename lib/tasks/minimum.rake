desc "Calculate minimum"
task :minimum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MINIMUM
  # =======

  # Yes, we realize that we could just use .min, but don't; instead, practice using .each to solve this problem.

  # To find the minimum of a list as a human:

  #  - I write down the first item in the list as the minimum (even though it may not be the real one).
  #  - Next, I go through the rest of the list; for each element,
  #    - I check if it is smaller than what I previously wrote down as the minimum. If so,
  #      - I replace the previous min with it.
  #    - If not, I do nothing and go to the next element.
  #  - After we've looked at every element, what we're left with should be the real minimum
end
