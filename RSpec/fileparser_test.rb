require_relative 'fileparser'
# require_relative 'test.txt'

RSpec.describe 'Parse' do
  it 'when file is valid' do
    parser = FileParser.new('test.txt')
    expect(parser.parse).to eq([
      'name => Alice, age => 30',
      'name => sammer, age => 25'
    ])
  end

  it 'when file is empty' do
    parser = FileParser.new('test2.txt')
    expect(parser.parse).to eq([])
  end

  # it 'when file is not found' do
  #   # file = File.open('example.txt','r')
  #   # content = file.read
  #   # file.close
  #   parser = FileParser.new('test2.txt')
  #   expect {parser.parse}.to raise_error(FileError, "File is not valid")
  # end
end