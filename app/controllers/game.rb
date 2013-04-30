post '/game' do
  player_1 = Player.create(name: params[:player_1_name], initials: params[:player_1_initials])
  player_2 = Player.create(name: params[:player_2_name], initials: params[:player_2_initials])

  game = Game.create()
  game.players << player_1
  game.players << player_2

  redirect to "/game/#{game.id}/play"
end

get '/game/:id/play' do
  @game = Game.find(params[:id])
  @player_1 = @game.players.first
  @player_2 = @game.players.last

  erb :game
end 

put '/game/:id' do
  p 'params bel?ow!'
  p params[:winner_id]
  update_hash = {}
  update_hash[:winner_id] = params[:winner_id]
  update_hash[:time_played] = params[:time_played]
  # @game = Game.find(params[:id])
  # @player_1 = @game.players.first
  # @player_2 = @game.players.last
  the_game = Game.find(params[:game_id]).update_attributes(update_hash)
end
