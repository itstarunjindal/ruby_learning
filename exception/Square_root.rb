def get_valid_input
  begin
    print "Enter a number to find square root: "
    n = gets.chomp

    f = Float(n)

    sr = f ** 0.5


    if sr*sr == f
      puts "number is valid"
    else
      raise ArgumentError, "Number must be valid"
    end

    return sr

  rescue ArgumentError => e
    puts "Error: #{e.message}"
    retry

  rescue ArgumentError, TypeError => e
    puts "Invalid input"
    retry
  end
end

begin
  result = get_valid_input
  puts "Square root of number #{result}"
rescue
  StandardError => e
  puts "Error: #{e.message}"
end