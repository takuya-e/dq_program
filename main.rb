require_relative "brave"
require_relative "monster"

brave = Brave.new(name: "ゆうしゃ", hp: 300, offense: 100, defense: 50)
monster = Monster.new(name: "アークデーモン", hp: 200, offense: 70, defense: 40)

puts "#{monster.name} があらわれた!"

if brave.hp > 0 
  loop do
    brave.attack(monster)
    monster.hp = 0 if monster.hp <= 0
    puts <<~TEXT
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT
    break if monster.hp <= 0
    monster.attack(brave)
    brave.hp = 0 if brave.hp <= 0
    puts <<~TEXT
    【#{brave.name}】HP: #{brave.hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT
    break if brave.hp < 0 
  end
end

if monster.hp <= 0
  puts "#{monster.name}をやっつけた!"
else
  puts "#{brave.name}はしんでしまった!"
end

