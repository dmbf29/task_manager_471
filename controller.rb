require_relative 'view'
require_relative 'task'

class Controller
  def initialize(respository)
    @respository = respository
    @view = View.new
  end

  def create
    # ask the user what the want "to do"
    description = @view.ask_for_description
    # description = store their answer
    # create an instance of a Task
    task = Task.new(description)
    # give the task to the respository
    @respository.add(task)
  end

  def list
    # get the tasks from the repostory
    tasks = @respository.all
    # puts the list of task
    @view.display_tasks(tasks)
  end

  def mark_as_done
    # get the tasks from the repostory
    tasks = @respository.all
    # puts the list of task
    @view.display_tasks(tasks)

    # index = ask the user which task is done ( - 1)
    index = @view.ask_for_index
    # get the task from the repository
    task = @respository.find(index) # gives one task
    # mark the task as done
    task.mark_as_done!
  end
end
