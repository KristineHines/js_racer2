10.times do
  a = Player.create(:name => Faker::Name.name,
                :initials => Faker::Name.last_name)

  b = Player.create(:name => Faker::Name.name,
                :initials => Faker::Name.last_name)
  game = Game.create()

  game.players << a
  game.players << b
end



