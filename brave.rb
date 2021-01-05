require_relative "character"

class Brave < Character

  def attack(monster)
    puts "#{@name} の攻撃!"
      monster_damage = @offense - monster.defense / 2
      monster.hp -= monster_damage
    puts <<~TEXT
      #{monster.name} に #{monster_damage} のダメージを与えた!
      *=*=*=*=*=*=*=*=*=*=*
    TEXT
  end
end