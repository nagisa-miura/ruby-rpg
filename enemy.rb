class Enemy < Member  #クラスの継承
  @@total_enemy = 0
  @@enemy_list=["スライム","ドラゴン","ゾンビ","プラント"]
  def encount         #ポリモーフィズム
    puts "敵が現れた"
    @name = @@enemy_list.sample
    @level = rand(1..5)
    @hp = rand(5..50)
    @power = rand(3..20)
    puts "敵のステータス  名前：#{@name},Lv:#{@level},パワー#{@power}"
  end
end

