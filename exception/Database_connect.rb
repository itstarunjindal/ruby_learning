class DatabaseError < StandardError; end
class ConnectionError < StandardError; end

def execute_query
  begin
    raise ConnectionError, "Lost database connection"
  rescue ConnectionError => e
    raise  DatabaseError, "Query failed due to: #{e.message}"
  end
end


begin
  execute_query

rescue DatabaseError => e
  puts "DatabaseError caught: #{e.message}"

  if e.cause
    puts "Roots cause: #{e.cause.message}"
  end
end