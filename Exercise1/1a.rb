class Player
    attr_reader :name, :score

    def initialize(name, score)
        @name = name
        @score = score
    end 
end

players = []

50.times do |i|
    players << Player.new("Player #{i}", rand(10...300) )
end

50.times do |i|
    puts "Get ready #{players[i].name}! Score: #{players[i].score}"
end
