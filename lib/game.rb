class Game
  attr_reader :total_score, :current_bowl, :current_frame

  def initialize
    @total_score = 0
    @current_bowl = 1
    @current_frame = 1
  end

  def enter_score(score)
    @total_score += score
    @current_bowl = 2 unless score == 10
    @current_frame += 1 if score == 10
  end

end