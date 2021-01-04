require_relative "brave"
require_relative "monster"

brave = Brave.new(name: "ゆうしゃ", hp: 300, offense: 100, defense: 50)
monster = Monster.new(name: "アークデーモン", hp: 200, offense: 70, defense: 40)

puts "#{monster.name} があらわれた!"
loop do
  brave.attack(monster)

  if monster.hp <= 0
    break
  end

  monster.attack(brave)
  
  if brave.hp <= 0
    break
  end
end

