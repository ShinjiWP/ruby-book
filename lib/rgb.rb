# 第四章
# 配列について

# array = [1, 2, 3]
# array = ['test', 'devlop', 'debug']
# array = [1, 'test', 2, 'devlop', 3, 'debug']

# p array
# p array[0]
# p array.length


# array[2] = 22
# p array


# array[7] = 'apple'
# array << 100
# array << 'orange'
# p array

# array.delete_at(0)
# p array

# 配列の多重代入

# a, b = [1, 3]
# p b
# p a

# 13.divmod(3)
# quo_rem = 14.divmod(3)
# p quo_rem

# quotient, remainder = 15.divmod(2)
# p quotient
# p remainder


# ブロック
# numbers = [1, 2, 3, 4]
# sum = 0

# numbers.each do |n|
#   sum += n
# end
# p sum

# numbers.delete(1)
# p numbers

# numbers.delete_if do |n|
#   n.odd?
# end

# numbers.delete_if do |n|
#   n.even?
# end
# p numbers

# numbers.each do |n|
#   sum_value = n.even? ? n * 10 : n
#   sum += sum_value
# end
# p  sum

# ブロックを使う配列のメソッド

# numbers = [1, 2, 3, 4, 5]
# text = ['a', 'b', 'c']
# new_numbers = []
# numbers.each do |n|
#   new_numbers << n * 12
# end

# new_numbers = numbers.map{ |n| n * 10}

# new_numbers = numbers.select{ |n| n.even? }

# new_numbers = numbers.reject{ |n| n.even? }

# new_numbers = numbers.find{ |n| n.even? }

# new_numbers = numbers.sum

# new_numbers = numbers.sum { |n| n *2 }
# p new_numbers


# new_text = text.sum('')

# new_text = text.join

# new_text = text.join('-')
# p new_text


# new_numbers = numbers.select(&:odd?)
# new_numbers = numbers.select(&:even?)
# p new_numbers

# new_text = text.map(&:upcase)
# p new_text


# n以上m未満
# def liquid(temperature)
#   if 0 <= temperature && temperature < 100
#     puts "液体です。"
#   end
# end

# def liquid(temperature)
#   if (0...100).include?(temperature)
#     puts '液体です。'
#   end
# end
# liquid(10)


# case文で使う
# def charge(age)
#   case age
#   when 0..5
#     0
#   when 6..12 
#     100
#   else
#     200
#   end
# end

# p charge(10)



# 例題：RGB変換プログラムを作る
# def to_hex(r, g, b)
#   '#' +
#   r.to_s(16).rjust(2, '0') +
#   g.to_s(16).rjust(2, '0') +
#   b.to_s(16).rjust(2, '0') 
# end

# def to_hex(r, g, b)
#   hex = '#'
#   [r, g, b].each do |n|
#     hex += n.to_s(16).rjust(2, '0')
#   end
#   hex
# end

# def to_hex(r, g, b)
#   hex = '#'
#   [r, g, b].sum('#') do |n|
#     n.to_s(16).rjust(2, '0')
#   end
# end

# def to_hex(r, g, b)
#   [r, g, b].inject('#') do |hex, n|
#     hex + n.to_s(16).rjust(2, '0')
#   end
# end

# # def to_ints(hex)
# #   r = hex[1..2]
# #   g = hex[3..4]
# #   b = hex[5..6]
# #   ints = []
# #   [r, g, b].each do |s|
# #     ints << s.hex
# #   end
# #   ints 
# # end
# # 上記をリファクタリング
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   [r, g, b].map do |s|
#     s.hex
#   end
# end


# 4.7配列についてもっと詳しく

# joinメソッドは要素の間に挟む文字を指定できる。複数要素が無い場合は空要素を返す。
# def greet(*names)
#   "#{names.join('と')}, こんにちには！"
# end

# p greet('田中さん', '鈴木さん')

# names = %w! 田中 小松!
# greet = names.map {|name| "#{name}さん" }.join('と')
# p greet

# 文字列を配列に変換
# text = 'Language'
# a = text.chars
# p a



# dimensions = [[100, 90], [120, 8]]
# area = Array.new

# dimensions.each do |width, height|
#   area << width * height
# end

# dimensions.each_with_index do |width, height, i|
#   puts "width : #{width}, height : #{height}, i : #{i}"
# end

# dimensions.each_with_index do |dimension, i|
#   width = dimension[0]
#   height = dimension[1]
#     puts "width : #{width}, height : #{height}, i : #{i}"
# end

# dimensions.each_with_index do |(width, height), i|
#   puts "width : #{width}, height : #{height}, i : #{i}"
# end


