desc "Say hello"
task :hi do
  ap("Hello!")
end

desc "Say goodbye"
task :bye do
  ap("Goodbye!")
end

desc "Print today's date"
task :print_date do
  ap(Date.today)
end

desc "Check if today is Friday"
task :friday do
  if Date.today.wday == 5
    ap("It's Friday!")
  else
    ap("Not Friday yet...")
  end
end

desc "Print a random fortune"
task :fortune do
  fortunes = [
    "Do not mistake temptation for opportunity",
    "A friend asks only for your time not your money",
    "Do not confuse recklessness with confidence",
    "Bide your time, for success is near",
    "Every day in your life is a special occasion"
  ]

  ap(fortunes.sample)
end

desc "Play rock in rock-paper-scissors"
task :play_rock do
  # Print the move we played
  ap("We played rock")

  # Select a random move for the computer
  computer_move = ["rock", "paper", "scissors"].sample

  # Print the move the computer played
  ap("The computer chose #{computer_move}.")

  # Print the result of the game
  if computer_move == "rock"
    ap("We tied!")
  elsif computer_move == "paper"
    ap("We lose!")
  else computer_move == "scissors"
    ap("We win!")
  end
end

desc "Play paper in rock-paper-scissors"
task :play_paper do
  # Print the move we played
  ap("We played paper")

  # Select a random move for the computer
  computer_move = ["rock", "paper", "scissors"].sample

  # Print the move the computer played
  ap("The computer chose #{computer_move}.")

  # Print the result of the game
  if computer_move == "rock"
    ap("We win!")
  elsif computer_move == "paper"
    ap("We tied!")
  else computer_move == "scissors"
    ap("We lose!")
  end
end

desc "Play scissors in rock-paper-scissors"
task :play_scissors do
  # Print the move we pla
  ap("We played scissors")

  # Select a random move for the computer
  computer_move = ["rock", "paper", "scissors"].sample

  # Print the move the computer played
  ap("The computer chose #{computer_move}.")

  # Print the result of the game
  if computer_move == "rock"
    ap("We lose!")
  elsif computer_move == "paper"
    ap("We win!")
  else computer_move == "scissors"
    ap("We tied!")
  end
end

desc "Print the contents of input.txt"
task :print_input do
  input = open(Rails.root + 'lib/input_files/input.txt').read
  ap(input)
end

desc "Calculate word count statistics"
task :word_count do
  text = open(Rails.root + 'lib/input_files/word_count_text.txt').read
  special_word = open(Rails.root + 'lib/input_files/word_count_special_word.txt').read

  # ==========================================================================
  # Your code goes below.
  # The text from the file is in the string text.
  # The special word from the file is in the string special_word.
  # ==========================================================================

  # Character count with spaces
  # ===========================
  character_count_with_spaces = text.chomp.length


  # Character count without spaces
  # ==============================

  # Removing whitespace from string:
  text_without_spaces = text.gsub(" ",  "")
  text_without_newlines = text_without_spaces.gsub("\n", "")
  text_without_carriage_returns = text_without_newlines.gsub("\r", "")
  text_without_tabs = text_without_carriage_returns.gsub("\t", "")

  # Alternatively, text.gsub(/\s+/, "") would remove all whitespace at once.

  character_count_without_spaces = text_without_tabs.length

  # Another alternative would be to count the occurrences of each whitespace
  #   character, then subtract that from the total length:
  # text.length - text.count(" ") - text.count("\n") - etc

  # Word Count
  # ==========

  array_of_words = text.split
  word_count = array_of_words.count

  # Occurrences
  # ===========

  text_without_periods            = text.gsub(".", "")
  text_without_commas             = text_without_periods.gsub(",", "")
  text_without_exclamation_points = text_without_commas.gsub("!", "")
  text_without_question_marks     = text_without_exclamation_points.gsub("?", "")
  text_without_colons             = text_without_exclamation_points.gsub(":", "")
  text_without_semicolons         = text_without_colons.gsub(";", "")
  text_without_forward_slashes    = text_without_semicolons.gsub("/", "")
  text_without_back_slashes       = text_without_forward_slashes.gsub("\\", "")

  # Alternatively, text.gsub(/[^a-z0-9\s]/i, '') would remove anything
  #   except letters, digits, and whitespace all at once.

  downcased_text = text_without_back_slashes.downcase

  clean_word_array = downcased_text.split

  occurrences = clean_word_array.count(special_word.downcase)

  ap("Your text")
  ap("---------")
  ap(text)
  ap("")
  ap("Character count (with spaces): #{character_count_with_spaces}")
  ap("Character count (without spaces): #{character_count_without_spaces}")
  ap("Occurrences of '#{special_word}': #{occurrences}")
end

desc "Calculate monthly loan payments"
task :loan_payment do
  apr = open(Rails.root + 'lib/input_files/loan_payment_apr.txt').read.chomp.to_f
  years = open(Rails.root + 'lib/input_files/loan_payment_years.txt').read.chomp.to_i
  principal = open(Rails.root + 'lib/input_files/loan_payment_principal.txt').read.chomp.to_f

  # ==========================================================================
  # Your code goes below.
  # The annual percentage rate from the file is in the decimal apr.
  # The number of years from the file is in the integer years.
  # The principal value from the file is in the decimal principal.
  # ==========================================================================

  rate = apr / 100 / 12
  nper = years * 12

  monthly_payment = (rate * principal)/(1 - (1 + rate)**-nper)

  ap("APR: #{apr}")
  ap("Number of Years: #{years}")
  ap("Principal: $#{principal}")
  ap("Monthly Payment: $#{monthly_payment.round(2)}")
end

desc "Sort and count numbers"
task :sort_and_count do
  input = open(Rails.root + 'lib/input_files/descriptive_statistics_numbers.txt').read.chomp
  numbers = input.gsub(',', '').split.map(&:to_f)

  # ==========================================================================
  # Your code goes below.
  # The numbers from the file are in the array numbers.
  # ==========================================================================

  sorted_numbers = numbers.sort
  count = numbers.count


  ap("Your numbers:")
  ap(numbers)
  ap("Sorted Numbers:")
  ap(sorted_numbers)
  ap("Count: #{count}")
end

desc "Calculate minimum"
task :minimum do
  input = open(Rails.root + 'lib/input_files/descriptive_statistics_numbers.txt').read.chomp
  numbers = input.gsub(',', '').split.map(&:to_f)

  # ==========================================================================
  # Your code goes below.
  # The numbers from the file are in the array numbers.
  # ==========================================================================

  # MINIMUM
  # ===
  # To find the minimum of a set of numbers,
  #  - we set the minimum to the first item in the set
  #  - for each number in the set,
  #    - we check if the current number is smaller than the minimum
  #      - if so, we set the minimum to the current number
  #  - after we've looked at every number, the minimum should be accurate
  minimum = numbers.first
  numbers.each do |num|
    if num < minimum
      minimum = num
    end
  end

  ap("Your numbers:")
  ap("-------------")
  ap(numbers)
  ap("Minimum: #{minimum}")
end

desc "Calculate maximum"
task :maximum do
  input = open(Rails.root + 'lib/input_files/descriptive_statistics_numbers.txt').read.chomp
  numbers = input.gsub(',', '').split.map(&:to_f)

  # ==========================================================================
  # Your code goes below.
  # The numbers from the file are in the array numbers.
  # ==========================================================================

  # MINIMUM
  # ===
  # To find the maximum of a set of numbers,
  #  - we set the maximum to the first item in the set
  #  - for each number in the set,
  #    - we check if the current number is larger than the maximum
  #      - if so, we set the maximum to the current number
  #  - after we've looked at every number, the maximum should be accurate
  maximum = numbers.first
  numbers.each do |num|
    if num > maximum
      maximum = num
    end
  end

  ap("Your numbers:")
  ap("-------------")
  ap(numbers)
  ap("Maximum: #{maximum}")
end

desc "Calculate range"
task :range do
  input = open(Rails.root + 'lib/input_files/descriptive_statistics_numbers.txt').read.chomp
  numbers = input.gsub(',', '').split.map(&:to_f)

  # ==========================================================================
  # Your code goes below.
  # The numbers from the file are in the array numbers.
  # ==========================================================================

  # RANGE
  # ===
  # To find the range of a set of numbers,
  #  - subtract the minimum from the maximum
  minimum = numbers.first
  numbers.each do |num|
    if num < minimum
      minimum = num
    end
  end

  maximum = numbers.first
  numbers.each do |num|
    if num > maximum
      maximum = num
    end
  end

  range = maximum - minimum

  ap("Your numbers:")
  ap("-------------")
  ap(numbers)
  ap("Range: #{range}")
end

desc "Calculate sum"
task :sum do
  input = open(Rails.root + 'lib/input_files/descriptive_statistics_numbers.txt').read.chomp
  numbers = input.gsub(',', '').split.map(&:to_f)

  # ==========================================================================
  # Your code goes below.
  # The numbers from the file are in the array numbers.
  # ==========================================================================

  # SUM
  # ===
  # To find the sum of a set of numbers,
  #  - we start with 0
  #  - for each number in the set,
  #    - we add it to the running total
  #  - after we've looked at every number, the running total is the sum
  sum = 0
  numbers.each do |num|
    sum = sum + num
  end

  ap("Your numbers:")
  ap("-------------")
  ap(numbers)
  ap("Sum: #{sum}")
end

desc "Calculate mean"
task :mean do
  input = open(Rails.root + 'lib/input_files/descriptive_statistics_numbers.txt').read.chomp
  numbers = input.gsub(',', '').split.map(&:to_f)

  # ==========================================================================
  # Your code goes below.
  # The numbers from the file are in the array numbers.
  # ==========================================================================

  # MEAN
  # ====
  # To find the mean of a set,
  #  - we sum up all the elements
  #  - then we divide the sum by the number of elements in the set
  sum = 0
  numbers.each do |num|
    sum = sum + num
  end

  count = numbers.count

  mean = sum/count

  ap("Your numbers:")
  ap("-------------")
  ap(numbers)
  ap("Mean: #{mean.round(3)}")
end

desc "Calculate median"
task :median do
  input = open(Rails.root + 'lib/input_files/descriptive_statistics_numbers.txt').read.chomp
  numbers = input.gsub(',', '').split.map(&:to_f)

  # ==========================================================================
  # Your code goes below.
  # The numbers from the file are in the array numbers.
  # ==========================================================================

  # MEDIAN
  # ===
  # To find the median of a set of numbers,
  #  - sort your set
  #  - find the number of items in your sorted set
  #  - if your sorted set has an odd number of items
  #    - save the middle number as your median
  #  - otherwise
  #    - find the number to the left of the middle number
  #    - find the number to the right of the middle number
  #    - average the left and right numbers and save it as your median
  sorted_numbers = numbers.sort
  count = numbers.count
  if count.odd?
    median = sorted_numbers[count / 2]
  else
    left_of_middle = sorted_numbers[(count / 2) - 1]
    right_of_middle = sorted_numbers[(count / 2)]
    median = (left_of_middle + right_of_middle) / 2
  end

  ap("Your numbers:")
  ap("-------------")
  ap(numbers)
  ap("")
  ap("Sorted Numbers:")
  ap(sorted_numbers)
  ap("Median: #{median}")
end

desc "Calculate standard deviation"
task :standard_deviation do
  input = open(Rails.root + 'lib/input_files/descriptive_statistics_numbers.txt').read.chomp
  numbers = input.gsub(',', '').split.map(&:to_f)

  # ==========================================================================
  # Your code goes below.
  # The numbers from the file are in the array numbers.
  # ==========================================================================

  # VARIANCE
  # ========
  # To find the variance of a set,
  #  - we find the mean of the set
  #  - for each number in the set,
  #    - we find the difference between the number and the mean
  #    - we square the difference
  #  - the variance is the mean of the squared differences
  count = numbers.count
  sum = 0
  numbers.each do |num|
    sum = sum + num
  end
  mean = sum/count
  squared_differences = []

  numbers.each do |num|
    difference = num - mean
    squared_difference = difference ** 2
    squared_differences.push(squared_difference)
  end

  variance = squared_differences.sum / count


  # STANDARD DEVIATION
  # ==================
  # To find the standard deviation of a set,
  #  - take the square root of the variance
  standard_deviation = Math.sqrt(variance)

  ap("Your numbers:")
  ap("-------------")
  ap(numbers)
  ap("")
  ap("Standard Deviation: #{standard_deviation}")
end

desc "Calculate mode"
task :mode do
  input = open(Rails.root + 'lib/input_files/descriptive_statistics_numbers.txt').read.chomp
  numbers = input.gsub(',', '').split.map(&:to_f)

  # ==========================================================================
  # Your code goes below.
  # The numbers from the file are in the array numbers.
  # ==========================================================================

  # MODE
  # ========
  # To find the mode of a set of numbers,
  #  - set a leader to a nil value
  #  - set the count of the leader to 0
  #  - for each number in the set
  #    - count the number of occurrences of the current number in the set
  #    - if the number of occurences is greater than the leader count
  #      - set the leader to the current number
  #      - set the leader count to the number of occurences
  #  - the eventual leader is your mode
  leader = nil
  leader_count = 0

  numbers.each do |num|
    occurrences = numbers.count(num)
    if occurrences > leader_count
      leader = num
      leader_count = occurrences
    end
  end

  mode = leader


  ap("Your numbers:")
  ap("-------------")
  ap(numbers)
  ap("")
  ap("Mode: #{mode}")
end

desc "Import movies into a CSV file"
task import_movies: :environment do
  # url = "http://www.imdb.com/movies-coming-soon/"
  # page = HTTParty.get(url)

  filename = Rails.root + "lib/imdb/movies-coming-soon.html"
  page = open(filename)

  doc = Nokogiri::HTML(page)

  all_movie_nodes = doc.css(".nm-title-overview-widget-layout")

  list_of_movies = Array.new

  all_movie_nodes.each do |one_movie_node|
    title = one_movie_node.css("h4").text.strip

    # SelectorGadget is awesome for difficult to diagnose CSS selectors!
    director = one_movie_node.css(".outline+ .txt-block a").text.strip
    genre = one_movie_node.css(".cert-runtime-genre span").text.strip
    runtime = one_movie_node.css("time").text.strip
    description = one_movie_node.css(".overview-top .outline").text.strip

    movie_hash = Hash.new
    movie_hash[:title] = title
    movie_hash[:genre] = genre
    movie_hash[:runtime] = runtime
    movie_hash[:description] = description

    list_of_movies.push(movie_hash)
  end

  ap("Saving movies to file 'coming_soon.csv...'")

  ap(list_of_movies)

  list_of_movies.to_csv("lib/imdb/coming_soon.csv")
end
