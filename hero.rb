class Member
  attr_accessor :name, :level, :hp, :power
  @@total_member = 0
  @@companion = ["戦士","魔法使い","盗賊"]  #データベースに移したい
  def hero_create
    puts "名前を入力してください"
    input = gets.chomp.to_s    #改行は空扱いじゃないことに注意(気づかなくて分岐できず詰まった...)
    if input.empty? == true then
      @name = "勇者ロト"
    else
      @name = input
    end
    @level = 1
    @hp = 20
    @power = rand(1..10)
    @@total_member = @@total_member + 1
    puts "現在のメンバー数#{@@total_member}人"
  end

  def companion_create
    puts "仲間の名前を決めてください"
    input = gets.chomp.to_s
    if input.empty? == true then
      @name = @@companion.sample
    else
      @name = input
    end
    @level = 1
    @hp = 20
    @power = rand(1..10)
    @@total_member = @@total_member + 1
    puts "現在のメンバー数#{@@total_member}人"
  end

  def status
    puts "名前：#{@name},Lv:#{@level},#{@HP},パワー#{@power}"
  end

  def job_convert
    puts "♦♦♦ 転職テスト!!!!!"
    dice = rand(1..6)
    sleep(1)
    if dice >= 2 then
      puts "♦♦♦ 転職成功！"
      befor_name = @name
      @name = "最強の#{befor_name}"
      @level = 10 
      @hp = 1000
      @power = 2000
    else
      puts "♦♦♦ 転職失敗......"
    end
  end
end