require_relative 'TodoList'

list = TodoList.new

RSpec.describe 'Add task' do
  it 'add task to todo list' do

    result = list.add_task("ruby learning")
    expect(result).to eq(list.task)
  end

  it 'gets exception' do

    expect {list.add_task("  ")}.to raise_error(ArgumentError, 'Task title cannot be empty')
  end
  
end

RSpec.describe 'Completed task' do
  it 'task completed on todolist' do

    result = list.complete_task("ruby learning")
    expect(result).to eq(true)
  end

  it 'gets exception' do

    expect {list.complete_task("ror")}.to raise_error(StandardError, 'Task not found')
  end
  
end

RSpec.describe 'remove task' do
  it 'remove task from todo list' do

    result = list.remove_task("ruby learning")
    expect(result).to eq(list.task)
  end

  it 'gets exception' do

    expect {list.remove_task("ror")}.to raise_error(StandardError, 'Task not found')
  end
  
end