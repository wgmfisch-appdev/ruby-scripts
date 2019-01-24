desc "Calculate maximum"
task :maximum do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  ap("Your Numbers")
  ap(numbers)
  #Using .max (i.e. cheating)
  ap("Using .max (i.e. cheating): " + numbers.max.to_s)
  #Using .sort
  ap("Using .sort: " + numbers.sort.at(-1).to_s)
  #Using a loop
  saved_num = numbers.at(0)
  numbers.each do |num|
    if num > saved_num
      saved_num = num
    end
  end
  ap("Using a loop: " + saved_num.to_s)

end
