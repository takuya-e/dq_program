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
  end
end