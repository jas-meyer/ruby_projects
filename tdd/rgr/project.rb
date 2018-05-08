class Project
  attr_accessor :name, :description, :owner, :tasks
   @@tasks = []
  def initialize()
  	@name = name
  	@description = description
    @owner = owner
  end

  def elevator_pitch
  	return "#{@name}, #{@description}"
  end
  
  def add_tasks(task)
    @@tasks.push(task)
    p "Tasks: #{@@tasks}"
    
  end
end


# project1.add_tasks("Jumping off bridge")