@ene_hp = 100
@hp = 100
cnt = 1

puts "\n## 野生のいさみんが現れた！ ##\n"

loop do
sentou = <<EOS
"#-------------------------------------#"
どうする？
1, たたかう  2, かいふく
3, ぽけもん  4, 逃げる
"#-------------------------------------#"
EOS
  puts sentou
  cmd = gets.to_i

case cmd
when 1
  @att = rand(15..30)
  @ene_hp -= @att
  puts "いさみんに#{@att}ダメージ!"

when 2
  @hp += 50
when 3
  puts "ぽけもんっ！！"
  sleep(1)
  puts "しかし、なにもおきなかった。"
when 4
  num = rand(1..10)
  if num == 1
    puts "にげきれた。"
    break
  else
    puts "いさみん「どこへいこうというのかね」"
  end
else
  puts "1～4で入力してください"
end

if cnt % 3 == 0
  puts "いさみんのひっさつわざ！！"
  @ene_att = rand(40..50)
  @hp -= @ene_att
  puts "#{@ene_att}ダメージ!"
else
  puts "いさみんのこうげき"
  @ene_att = rand(20..35)
  @hp -= @ene_att
  puts "#{@ene_att}ダメージ!"
end

@ene_hp = 0 if @ene_hp <= 0
@hp = 0 if @hp <= 0

puts "\n"
puts "いさみんのhpは#{@ene_hp}"
puts "じぶんのhpは#{@hp}"
puts "\n\n"
cnt += 1

if @hp <= 0
  puts "まけた。いさみん、いさみん...。"
  break
end
if @ene_hp <= 0
  puts "いさみんをたおした。"
  puts "しょうきんでおすしでもたべにいこう。"
  break
end

end
