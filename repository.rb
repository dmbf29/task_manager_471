class Repository
  def initialize
    @tasks = []
  end

  # create
  def add(task)
    @tasks << task
  end

  # read
  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  # delete
  def remove(index)
    @tasks.delete_at(index)
  end
end
