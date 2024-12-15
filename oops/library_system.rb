class Book
  attr_accessor :title, :author, :genre 

  def initialize(title, author, genre)
    @title = title
    @genre = genre
    @author = author
  end

  def details
    "Title #{@title}, Author: #{@author}, Genre: #{@genre}"
  end

  def interact
    raise NotImplementedError, "Subclass must implemt the interact method."
  end
end

class EBook < Book
  def initialize(title, author, genre, file_size)
    super(title, author, genre)
    @file_size = file_size
  end

  def interact
    "Downloading the e-book '#{@title}' (File size: #{@file_size} MB)."
  end

  def details
    "#{super}, File Size: #{@file_size}"
  end
end

class PhysicalBook < Book
  def initialize(title, author, genre, copies)
    super(title, author, genre)
    @copies = copies
  end

  def interact
    if @copies>0
      @copies-=1
      "You have been issued #{@title}. Copies left: #{@copies}"
    else
      "#{@title} Not available."
    end
  end
    

  def details
    "#{super}, Copies Available: #{@copies}"
  end
  
end



ebook = EBook.new("The Ruby Way", "Hal Fulton", "Programming", 5)
book = PhysicalBook.new("Clean Code", "Robert C. Martin", "Programming", 3)

puts book.details
puts book.interact

puts ""

puts ebook.details
puts ebook.interact