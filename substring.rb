def substrings(string, dictionary)
  string = string.downcase
  substring_count = dictionary.reduce(Hash.new(0)) do |result, substring|

    if string.include?(substring)
      result[substring] += string.scan(/#{substring}/i).count
      # p string.scan(/#{substring}/i)
    else
      # p false
    end
    result
  end
  p substring_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
message = "Howdy partner, sit down! How's It going?"

substrings(message,dictionary)