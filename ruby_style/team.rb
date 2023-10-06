class Team
  attr_accessor :wins, :losses, :draws

  def initialize(wins = 0, losses = 0, ties = 0)
    @wins = wins
    @losses = losses
    @ties = ties
  end

  def games = wins + losses + ties

  def win_percentage
    return 0.0 if games.zero?
    ((wins * 1.0) + (ties * 0.5)) / (wins + losses + ties)
  end

  def <=>(other)
    raise ArgumentError unless other.respond_to?(:win_percentage)
    win_percentage <=> other.win_percentage
  end
end
