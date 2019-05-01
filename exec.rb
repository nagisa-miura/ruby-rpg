require './hero.rb'
require './enemy.rb'

def dice_roll
  dice = rand(1..6)
  puts "#{dice}の目が出た"
end

party = []

dice = rand(1..6)

# 主人公の生成
yusya = Member.new
yusya.hero_create
yusya.status

# 仲間の生成
nakama = Member.new
nakama.companion_create
nakama.status

# パーティの作成
party << yusya.name
party << nakama.name
puts "一人目#{party[0]}\n二人目#{party[1]}"

sleep (1)

# 転職イベント
dice_roll
if dice > 3 then
  nakama.job_convert
  nakama.status
else
  puts "何も起きなかった"
end

sleep(1)

# 敵の出現
enm1 = Enemy.new
enm1.encount
enm1.status

sleep(2)

# 戦闘イベント
puts "#{enm1.name}の攻撃！"
damage = enm1.power * rand(1..3)
puts "#{damage}のダメージ！"
yusya.hp = yusya.hp - damage
if yusya.hp > 0 then
  puts "残りHP:#{yusya.hp}"
else
  puts "#{yusya.name}は死んでしまった"
end