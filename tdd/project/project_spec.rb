require_relative 'project'
RSpec.describe Project do
  before(:each) do
    # updated this block to create two projects
    @project1 = Project.new('Project 1', 'description 1','John Smith')
    @project2 = Project.new('Project 2', 'description 2',"Tarzan")
    
  end
  it 'has a getter and setter for owner attribute' do
    @project1.owner = "John Doe"
    expect(@project1.owner).to eq("John Doe")
  end
  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
  end
  it 'has a task attribute' do
    expect(@project1.tasks).to eq(nil)
  end

  it 'has a method to add tasks' do
    expect(@project1.add_tasks("Jumping off bridge")).to eq("Tasks: [\"Jumping off bridge\"]")
  end

end