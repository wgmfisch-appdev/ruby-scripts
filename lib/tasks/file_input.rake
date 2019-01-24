desc "Print the contents of example_input.txt"
task :example_input_from_file do
  path_to_file = Rails.root + "lib/input_files/example_input.txt"
  ap(path_to_file)

  example_input = open(path_to_file).read
  ap(example_input)
end

desc "Create a new input file and read from it"
task :your_own_input_from_file do
  path_to_file = Rails.root + "lib/input_files/my_input.txt"
  ap(path_to_file)

  my_example_input = open(path_to_file).read
  ap(my_example_input.gsub(/[\n]/, "").gsub(/[^a-z0-9\s]/i, "").strip)
end
