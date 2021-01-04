require_relative "character"

class Monster < Character

  def attack(brave)
    puts "#{@name} の攻撃!"
      brave_damage = @offense - brave.defense / 2
      brave.hp -= brave_damage
    puts <<~TEXT
      #{brave.name} は #{brave_damage} のダメージを受けた!
      *=*=*=*=*=*=*=*=*=*=*
    TEXT
    if brave.hp < 0
       brave.hp = 0
    puts <<~TEXT
    【#{brave.name}】HP: #{brave.hp}
    【#{@name}】HP: #{@hp}
    *=*=*=*=*=*=*=*=*=*=*
    #{brave.name} はしんでしまった!
    TEXT
    else
    puts <<~TEXT
    【#{brave.name}】HP: #{brave.hp}
    【#{@name}】HP: #{@hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT
    end
  end
end