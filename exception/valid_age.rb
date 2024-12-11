class AgeError < StandardError
  def initialize(message = "Age is not Valid")
    super message
  end
end

print "Enter age b/w 18 and 100: "
age = gets.chomp.to_i

begin 
  if age>=18 && age<100
    print "Age is valid"

  else raise AgeError
    
  end
rescue AgeError => e
    puts "#{e.message}"
end