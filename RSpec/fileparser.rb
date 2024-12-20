# # require 'csv'

# # class FileParser
# #   def initialize(content)
# #     @content = content
# #   end

# #   def parse
# #     begin
# #       # puts "================>>>>>>>>"+@content
# #       return [] if @content.strip.empty?
# #       CSV.parse(@content, headers: true).map do |row|
# #         row.map { |header, value| "#{header} => #{value}" }.join(', ')
# #       end
# #     rescue Errno::ENOENT => e
# #       "File not found"
# #     end
# #   end
# # end



class FileError < StandardError; end

require 'csv'

class FileParser

  attr_accessor :content

  def initialize(file)
    # @file = file
    f = File.open(file,'r')
    @content = f.read
    f.close
    # raise FileError, "File not found"
  end


  def parse
    return [] if @content.strip.empty?

    # CSV.parse(@content, headers: true).map(&:to_h)

    CSV.parse(@content, headers: true).map do |row|
      row.map { |header, value| "#{header} => #{value}" }.join(', ')
    end
  end
end
