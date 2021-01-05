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
    if monster.hp < 0
       monster.hp = 0
    puts <<~TEXT
    【#{@name}】HP: #{@hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
    #{monster.name}をやっつけた
    TEXT
    else
    puts <<~TEXT
    【#{@name}】HP: #{@hp}
    【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT
    end
  end
end