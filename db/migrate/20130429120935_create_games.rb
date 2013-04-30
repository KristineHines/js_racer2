class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :winner_id
      t.string :time_played
    end  
  end
end
