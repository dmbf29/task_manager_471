class View
  # it's real stupid / never initialize
  # only puts / gets in here

  def ask_for_description
    puts "What do you want to do?"
    gets.chomp
  end

  def ask_for_index
    puts "Which number?"
    gets.chomp.to_i - 1
  end

  def display_tasks(tasks) # an array of INSTANCES
    puts "Tasks:"
    tasks.each_with_index do |task, index|
      # task an INSTANCE
      x_mark = task.done? ? 'X' : ' '
      puts "#{index + 1} - [#{x_mark}] - #{task.description}"
    end
  end
end
