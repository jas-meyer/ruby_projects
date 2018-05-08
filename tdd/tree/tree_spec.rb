require_relative 'tree'
RSpec.describe Tree do
	before(:each) do
    # updated this block to create two projects
    @tree1 = Tree.new(1, 20, 0)
    @tree2 = Tree.new(5, 30, 6)
    @tree3 = Tree.new(12, 50, 12)
	end 
	it 'age is an attribute with a getter and setter' do 
		@tree1.age = 5
		expect(@tree1.age).to eq(5)
	end
	it 'height is an attribute with only a getter' do
		expect{@tree1.height = 35}.to raise_error(NoMethodError)
		expect(@tree1.height).to eq(20)
	end
	it 'apple_count is an attribute with only a getter' do
		expect{@tree1.apple_count = 100}.to raise_error(NoMethodError)
		expect(@tree1.apple_count).to eq(0)
	end
	it 'year_gone_by method should increase the tree age by 1' do
		expect(@tree2.year_gone_by.age).to eq(6)
	end
	it 'year_gone_by method should increase the height by 10%' do
		expect(@tree2.year_gone_by.height).to eq(33)
	end
	it 'year_gone_by method should increase the apple_count by 2 if tree age is greater than 3 and less than ten' do
		expect(@tree2.year_gone_by.apple_count).to eq(8)
	end
	it 'year_gone_by method should not increase the apple_count if tree age is less than 3 or greater than 10' do
		expect(@tree1.year_gone_by.apple_count).to eq(0)
		expect(@tree3.year_gone_by.apple_count).to eq(12)
	end
	it 'pick_apples method will decrease the apple_count of a tree to 0' do
		expect(@tree2.pick_apples.apple_count).to eq(0)
	end
	

end