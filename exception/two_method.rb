def fetch_data

  raise StandardError, "Unable to fetch data"
end

def process_data

  begin
    fetch_data
    
  rescue StandardError => e

    puts "Error during data processing: #{e.message}"
  end
end

process_data

