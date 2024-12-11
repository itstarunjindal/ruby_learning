class ServerConnectingError < StandardError; end

def connect_to_server

  if rand(1..3) == 1
    puts "Server connected successfully"
  else
    raise ServerConnectingError, "Server not connected"
  end
end

max_attempt = 3
attempts = 0


begin
  connect_to_server
  
rescue ServerConnectingError => e
  attempts+=1
  puts "#{e.message} (Attempt left #{max_attempt-attempts})"
  retry if attempts <max_attempt
  puts "All attempts failed"
end
