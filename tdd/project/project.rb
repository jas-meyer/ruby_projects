class Project
  attr_accessor :name, :description, :owner, :tasks
  @@tasks = []
  def initialize(name, description, owner)
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

 project = Project.new
 project.name = "Name"
 p project.name
# project1.add_tasks("Jumping off bridge")