#Code changes in a nutshell:
#-Changed method names to be more standardized and readable
#-changed  main function call to be more readables
#-Added player class to store names and info, rather than have duplicated methods

#unimplemented ptotential changes:
#-Make player class inheretance to have specific player types for different games due to different information?
#make a game class that all other games can base off of for the framework to make specialized subclasses?

#Logic for keeping some things the same:
#class for individual games make sense due to different play code blocks
#duplicated get_results make sense due to different types of results and information to display for different games
#couldn't figure out a better way to do play games, so feels "ok"
#"main" function call is readable and simple for a small program.



class Poker
  def initialize(players)
    @players = []
    players.each { |x| @players.append(Player.new(x)) } #adds player class players
    @players.each { |i| @players[i].hand=nil} #correct way?
    #@players.length().times { |x| @players.append(nil) } #might be incorrect way to add player hand?
  end

  def play_poker()
    puts "Players in the poker game:"
    @players.each { |player| puts "#{player.name}: #{player.color}: #{player.hand}" } #changed to reflect player class
    # [pretend there's code here]
  end

  def get_poker_results()
    return "[pretend these are poker results]"
  end
  #removed get_player_name, getplayer hand, moved to player class
end

class Chess
  def initialize(players)
    @players = []
    players.each { |x, y| @players.append(Player.new(x, y)) } #changed to reflect player class
  end

  def play_chess()
    puts "Players in the chess game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" } #changed to reflect player class
    # [pretend there's code here]
  end

  def get_chess_results()
    return "[pretend these are chess results]"
  end
  #removed get_player_name, moved to player class
end


class Go
  def initialize(players)
    @players = []
    players.each { |x, y| @players.append(Player.new(x, y)) }
  end

  def play_go()
    puts "Players in the go game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_go_results()
    return "[pretend these are go results]"
  end
end

#removed go_player class, added overall player class
#could use subclasses for each game
class Player
  attr_reader :name, :color, :hand

  def initialize(name, color=none,hand=none)
    @name = name
    @color = color
    @hand=hand
  end

end

class PlayGames

  def initialize(game_name, player_list)
    @player_list = player_list
    @game_name= game_name #changed game number to game_name
  end

  #standardize function method names to be more consistent

  def play()
    case @game_name #changed from game number to game name
    when "poker" #changed from 1 to poker
      poker = Poker.new(@player_list)
      poker.play_poker()
      puts poker.get_results()
    when "chess" #changed from 2 to chess
      chess = Chess.new(@player_list)
      chess.play_chess() #changed from play_game to play_chess
      puts chess.get_results()
    when "go" #changed from 3 to go
      go = Go.new(@player_list)
      go.play_go() #changed from play to play_go
      puts go.get_results() #changed from get_score to get_results
    end
  end
end


#change 1, 2, and 3 to poker, chess, go to make code more readable and understandable at a glance

pg = PlayGames.new("poker", ["alice", "bob", "chris", "dave"])
pg.play()

puts

pg = PlayGames.new("chess", [["alice", "white"], ["bob", "black"]])
pg.play()

puts

pg = PlayGames.new("go", [["alice", "white"], ["bob", "black"]])
pg.play()
