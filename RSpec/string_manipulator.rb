class StringManipulator
  def reverse_words(string)
    string.split(/\s+/).reverse.join(' ')
  end

  def capitalize_words(string)
    string.split(/\s+/).map{|word| word.capitalize}.join(' ')
  end
end
