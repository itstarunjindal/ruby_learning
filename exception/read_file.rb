print "Enter the file you want to read: "
file_name = gets.chomp

begin

  file = File.open(file_name,'r')
  content = file.read
  puts "Content of file is:\n #{content}"

rescue Errno::ENOENT => e
  puts "Error: file not found"

rescue Errno::EACCES => e
  puts "permission denaid"

rescue StandardError => e
  puts "#{e.message}"
end
