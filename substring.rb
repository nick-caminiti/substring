def substrings(string, dictionary)

  substring_count = dictionary.reduce(Hash.new(0)) do |result, substring|
    # result[substring] += 1
    # p result
    # regex = 

    if string.include?(substring)
      result[substring] += string.scan(/#{substring}/).count
      # p string.scan(/#{substring}/).count
    else
      # p false
    end
    result
  end
  p substring_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
message = "Howdy partner, sit down! How's it going?"

substrings(message,dictionary)