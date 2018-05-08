require "spec_helper"
RSpec.describe Stringer do

    it "concatenates undefined number of strings with a space" do 
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  	end
  	
  	it "the minify function should return a string that matches the max length if the length of the string is less than the max length the string will be returned"do
  	expect(Stringer.minify "Hello, I'm learning how to create a gem", 10).to eq("Hello, I'm...") 
  	expect(Stringer.minify "Hello", 10).to eq("Hello")
  	end

  	it "the replacify function should return a string that has the replacement string replacing the word to be replaced" do
  	expect(Stringer.replacify "I can't do this", "can't", "can").to eq("I can do this")
  	end
  	
  	it "the tokenize function should return a array" do
  	expect(Stringer.tokenize "I love to code").to eq( ["I", "love", "to", "code"])
  	end

  	it "the removify function should remove a string from a another string" do
  	expect(Stringer.removify "I can't do this, I can't eat pie", "can't").to eq("I do this, I eat pie")
  	end

end
