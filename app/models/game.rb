class Game < ActiveRecord::Base
  has_and_belongs_to_many :players

  def check_winner(winner_id)
    if winner_id == '1'
      current_game.winner_id = session[:player_1_id]
      current_game.save
    else
      current_game.winner_id = session[:player_2_id]
      current_game.save
    end
  end

end
