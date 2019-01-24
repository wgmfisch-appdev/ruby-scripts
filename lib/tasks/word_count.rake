desc "Calculate word count statistics"
task :word_count do
  path_to_text = Rails.root + "lib/input_files/word_count_text.txt"
  text = open(path_to_text).read

  path_to_special_word = Rails.root + "lib/input_files/word_count_special_word.txt"
  special_word = open(path_to_special_word).read

  ap("File Input: " + text)
  ap("Character Length with Spaces: " + text.length.to_s)
  ap("Character Length without Spaces: " + text.gsub(" ","").length.to_s)
  
  search_count = 0
  text.gsub(".","").split.each do |word|
    if word == special_word.gsub(/\s+/, "")
      search_count = search_count + 1
    end
  end
  ap("Occurences of '" + special_word.gsub(/\s+/, "").to_s + "': " + search_count.to_s)
  
end
