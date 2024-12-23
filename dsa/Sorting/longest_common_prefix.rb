def longest_prefix(strs)
  return "" if strs.empty?

  prefix = strs[0]

  strs.each do |str|
    while str.index(prefix) != 0
      prefix = prefix[0..-2]
      return "" if prefix.empty?
    end
    
  end
  prefix
end

words = ["flower", "flow", "flight"]
result = longest_prefix(words)
puts result