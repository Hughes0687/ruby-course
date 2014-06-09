# Worked on by Stephen Hughes and Patrick Meaney.

#require 'pry-debugger'
require './exercises.rb'
#require 'spec_helper'

describe 'Exercise 0' do
  it "triples the length of a string" do
    result = Exercises.ex0("ha")
    expect(result).to eq("hahaha")
  end

  it "returns 'nope' if the string is 'wishes'" do
    result = Exercises.ex0("wishes")
    expect(result).to eq("nope")
  end
end

describe 'Exercise 1' do
  it "returns the number of elements in the array" do
  	arr = [1,2,3]

    result = Exercises.ex1(arr)
    expect(result).to eq(3)
  end
end

describe 'Exercise 2' do
  it "Returns the second element of an array" do
  	arr = [1,2,3]

    result = Exercises.ex2(arr)
    expect(result).to eq(2)
  end
end

describe 'Exercise 3' do
  it "Returns the sum of the given array of numbers" do
  	arr = [1,2,3]

    result = Exercises.ex3(arr)
    expect(result).to eq(6)
  end
end

describe 'Exercise 4' do
  it "Returns the max number of the given array" do
  	arr = [1,2,3]

    result = Exercises.ex4(arr)
    expect(result).to eq(3)
  end
end

describe 'Exercise 5' do
 it "Iterates through an array and `puts` each element" do
  arr = [1,2,3]
  
  expect(STDOUT).to receive(:puts).with(1)
  expect(STDOUT).to receive(:puts).with(2)
  expect(STDOUT).to receive(:puts).with(3)
  Exercises.ex5(arr)
  end
end

describe 'Exercise 6' do
  it "Updates the last item in the array to 'panda' If the last item is already 'panda', update it to 'GODZILLA' instead" do
  	arr = [1,2,"panda"]
  	
    result = Exercises.ex6(arr)
    expect(result.last).to eq("GODZILLA")
  end
end

describe 'Exercise 7' do
  it "If the string `str` exists in the array add `str` to the end of the array" do
  	arr = [1,2,"panda"]
  	str = "panda"
  	
    result = Exercises.ex7(arr, str)
    expect(result).to eq([1,2,"panda","panda"])
  end
end

describe 'Exercise 8' do
  it "`people` is an array of hashes. Each hash is like the following: { :name => 'Bob', :occupation => 'Builder' } iterate through `people` and print out their name and occupation." do
  	people = [{ :name => 'Bob', :occupation => 'Builder' }]
  	
    result = Exercises.ex8(people)
    expect(result).to eq([{ :name => 'Bob', :occupation => 'Builder' }])
    #expect(result).to eq("Bob:Builder")
    
  end
end

describe 'Exercise 9' do
  it "Returns `true` if the given time is in a leap year. Otherwise, returns `false`" do
  	time = Time.now.year

    result = Exercises.ex9(time)
    expect(result).to eq(false)
  end
end

describe 'Exercise rps1' do
  it "Initialize with two players names" do
  	game1 = RPS.new("Stephen","Patrick")

  	expect(game1.p1).to eq("Stephen")
  	expect(game1.p2).to eq("Patrick")
  end

  it "play method announces the winner" do
  	game1 = RPS.new("Stephen","Patrick")

  	game1.play("rock","scissors")
  	game1.play("rock","paper")
  	game1.play("rock","rock")
  	game1.play("rock","paper")

  	expect(game1.play("rock","rock")).to eq("Game Over!")
  end



end


