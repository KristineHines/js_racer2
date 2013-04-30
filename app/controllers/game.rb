post '/games' do
  player_1 = Player.create(name: params[:player_1_name], initials: params[:player_1_initials])
  player_2 = Player.create(name: params[:player_2_name], initials: params[:player_2_initials])

  game = Game.create()
  game.players << player_1
  game.players << player_2

  redirect to "/games/#{game.id}"
end

get '/games/:id' do
  @game = Game.find(params[:id])
  @player_1 = @game.players.first
  @player_2 = @game.players.last
  


  erb :game
end

put '/games' do
  p 'params bel?ow!'
  p params[:winner_id]
  # @game = Game.find(params[:id])
  # @player_1 = @game.players.first
  # @player_2 = @game.players.last
  
  content_type :json
  p Game.find(params[:id]).players.to_json
end 

# get '/games/:id/players' do
#   content_type :json
#   Game.find(params[:id]).players.to_json
# end


# get '/games/:id' do
#   # p session[:game].players
#   @game = Game.find(params[:id])
#   erb :game
# end

