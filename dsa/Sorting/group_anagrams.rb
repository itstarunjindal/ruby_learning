def group_anagrams(strs)
  anagrams = Hash.new {|hash,key| hash[key] = []}

  strs.each do |str|
    sorted = str.chars.sort.join
    anagrams[sorted] << str
  end

  anagrams.values
end

words = ["eat", "tea", "tan", "ate", "nat", "bat"]
result = group_anagrams(words)
result.each {|group| puts group.inspect}