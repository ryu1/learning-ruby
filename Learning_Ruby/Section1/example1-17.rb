# encoding: utf-8
#!/usr/bin/ruby

# 関数的メソッドの定義
def odd?(n)
  case n % 2 # 剰余
  when 0 then false
  when 1 then true
  else raise " 数学的にあり得ない " end
end

while num = gets
  # 正規表現による文字列のチェック
  unless /\A-?\d+\Z/ =~ num
    $stderr.puts " 整数を入力してください "
    next
  end

  num = num.to_i
  if odd?(num)
    puts "#{num}は奇数 "
  else
    puts "#{num}は偶数 "
  end

end
