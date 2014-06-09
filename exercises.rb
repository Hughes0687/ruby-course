# Worked on by Stephen Hughes and Patrick Meaney.

require 'pry-byebug'

module Exercises
  # Exercise 0
  #  - Triples a given string `str`
  #  - Returns "nope" if `str` is "wishes"
  def self.ex0(str)
    if str == "wishes"
      return "nope"
    else
      str * 3
    end
  end

  # Exercise 1
  #  - Returns the number of elements in the array
  def self.ex1(array)
    return array.length
  end

  # Exercise 2
  #  - Returns the second element of an array
  def self.ex2(array)
    return array[1]
  end

  # Exercise 3
  #  - Returns the sum of the given array of numbers
  def self.ex3(array)
    array.inject(:+)
  end

  # Exercise 4
  #  - Returns the max number of the given array
  def self.ex4(array)
    array.max
  end

  # Exercise 5
  #  - Iterates through an array and `puts` each element
  def self.ex5(array)
    array.each {|x| puts x}
  end

  # Exercise 6
  #  - Updates the last item in the array to 'panda'
  #  - If the last item is already 'panda', update
  #    it to 'GODZILLA' instead
  def self.ex6(array)
    if array.last == "panda"
      array.pop
      array.push "GODZILLA"
    else
      array.pop
      array.push "panda"
    end
  end

  # Exercise 7
  #  - If the string `str` exists in the array,
  #    add `str` to the end of the array
  def self.ex7(array, str)
    if array.include?(str)
      array.push(str)
    else
    end
  end

  # Exercise 8
  #  - `people` is an array of hashes. Each hash is like the following:
  #    { :name => 'Bob', :occupation => 'Builder' }
  #    Iterate through `people` and print out their name and occupation.
  def self.ex8(people)
    people.each {|h| puts "#{h[:name]}:#{h[:occupation]}"}
  end

  # Exercise 9
  #  - Returns `true` if the given time is in a leap year
  #    Otherwise, returns `false`
  # Hint: Google for the wikipedia article on leap years
  def self.ex9(time)
    if (time % 4 == 0)
      if (time % 100 == 0)
        if (time % 400 == 0)
          return true
        end
        return false
      end
      return true
    end
    return false
  end
end



  # Rock, Paper, Scissors
  # Make a 2-player game of rock paper scissors. It should have the following:
  #
  # It is initialized with two strings (player names).
  # It has a `play` method that takes two strings:
  #   - Each string reperesents a player's move (rock, paper, or scissors)
  #   - The method returns the winner (player one or player two)
  #   - If the game is over, it returns a string stating that the game is already over
  # It ends after a player wins 2 of 3 games
  #
  # You will be using this class in the following class, which will let players play
  # RPS through the terminal.


class RPS
  attr_reader :p1, :p2
  attr_accessor :p1_move, :p2_move


  def initialize(p1,p2)
    @p1 = p1
    @p2 = p2
    @p1_win = 0
    @p2_win = 0
  end

  def play(p1_move,p2_move)
    game_count = @p1_win + @p2_win
    if game_count < 3
      if p1_move == "rock"
        if p2_move == "paper"
          puts "#{p2} Wins!"
          @p2_win += 1
        elsif p2_move == "scissors"
          puts "#{p1} Wins!"
          @p1_win += 1
        else
          puts "It's a tie!"
        end
      elsif p1_move == "scissors"
        if p2_move == "paper"
          puts "#{p1} Wins!"
          @p1_win += 1
        elsif p2_move == "rock"
          puts "#{p2} Wins!"
          @p2_win += 1
        else
          puts "It's a tie!"
        end
      elsif p1_move == "rock"
        if p2_move == "paper"
          puts "#{p2} Wins!"
          @p2_win += 1
        elsif p2_move == "scisors"
          puts "#{p1} Wins!"
          @p1_win += 1
        else
          puts "It's a tie!"
        end
      end
    else
      return "Game Over!"
    end
  end
end


#require 'io/console'
class RPSPlayer
  # (No specs are required for RPSPlayer)
  #
  # Complete the `start` method so that it uses your RPS class to present
  # and play a game through the terminal.
  #
  # The first step is to read (gets) the two player names. Feed these into
  # a new instance of your RPS class. Then `puts` and `gets` in a loop that
  # lets both players play the game.
  #
  # When the game ends, ask if the player wants to play again.
def start
    puts "Name of player 1:"
    player1 = gets.chomp
    puts "Name of player 2:"
    player2 = gets.chomp
    game = RPS.new(player1, player2)
    # TODO

    # PRO TIP: Instead of using plain `gets` for grabbing a player's
    #          move, this line does the same thing but does NOT show
    #          what the player is typing! :D
    # This is also why we needed to require 'io/console'
    # move = STDIN.noecho(&:gets)
    while (true)
      puts "Player 1 move: "
      move1 = STDIN.noecho(&:gets).chomp
      puts "Player 2 move: "
      move2 = STDIN.noecho(&:gets).chomp
      # move1.gsub("\n","")
      # move2.gsub("\n","")
      a = game.play(move1, move2)
      # binding.pry
      if a == "Game is already over"
        puts "Game is aleady over"
        break
      elsif a == "Tie"
        puts "That round was a tie with both players throwing #{move1}"
      else
        puts "#{a} won that round"
      end
    end      
  end
end


module Extensions
  # Extension Exercise
  #  - Takes an `array` of strings. Returns a hash with two keys:
  #    :most => the string(s) that occures the most # of times as its value.
  #    :least => the string(s) that occures the least # of times as its value.
  #  - If any tie for most or least, return an array of the tying strings.
  #
  # Example:
  #   result = Extensions.extremes(['x', 'x', 'y', 'z'])
  #   expect(result).to eq({ :most => 'x', :least => ['y', 'z'] })
  #
  def self.extremes(array)
    # TODO
  end
end
