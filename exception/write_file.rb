begin
  File.open("test.txt", "w") do |file|
    file.puts("Hello World")
    file.puts("Good morning")
  
    raise "An error occured while writing to the file" if rand > 0.5
  end

  puts "File written successfully"

rescue => e
  puts "Error: #{e.message}"
ensure
  puts "Closing file"
end