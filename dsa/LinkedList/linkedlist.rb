class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end


class LinkedList
  attr_accessor :head
  
  def initialize
    @head = head
  end

  def add_end(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
      current.next = node
    end
  end
  alias add add_end
  def add_first(value)
    node = Node.new(value)
    node.next = @head
    @head = node
  end
  def display
    if @head.nil?
      puts "No node is present"
    else
      current = @head
      until current.nil?
        print "#{current.value} - "
        current = current.next
      end
      puts "nil"
    end
  end

  def delete(value)
    if @head.nil?
      puts "no node present"
    elsif @head.value == value
      @head = @head.next
    else
      current = @head
      until current.next.nil?
        if current.next.value == value
          current.next = current.next.next
          return
        end
        current = current.next
      end
      puts "#{value} is not present"
    end
  end

  def search(value)
    index = 0
    current = @head
    while current
      if current.value == value
        return index
      end
      current = current.next
      index+=1
    end
    puts "#{value} not found"
  end

  def length
    count = 0
    current = @head
    while current
      count+=1
      current = current.next
    end
    count
  end

  def reverse
    prev = nil
    current = @head
    while current
      next_node = current.next
      current.next = prev
      prev = current
      current = next_node
    end
    @head = prev
  end
end

ll = LinkedList.new

ll.add_end(5)
ll.add_end(7)
ll.add_end(9)
ll.add(8)
ll.add_first(2)

ll.display
ll.reverse
# puts ll.search(8)
# puts ll.length
# ll.delete(5)
ll.display

