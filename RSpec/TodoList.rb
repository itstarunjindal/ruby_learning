class TodoList

  attr_accessor :task

  def initialize
    @task = []
  end

  def add_task(title)
    raise ArgumentError, 'Task title cannot be empty' if title.strip.empty?

    @task << {title: title, completed: false}
  end

  def complete_task(title)
    task = find_task(title)
    raise StandardError, 'Task not found' unless task

    task[:completed] = true
  end

  def remove_task(title)
    task = find_task(title)
    raise StandardError, 'Task not found' unless task

    @task.delete(task)
    return @task
  end

  private

  def find_task(title)
    @task.find {|t| t[:title] == title}
  end
end
