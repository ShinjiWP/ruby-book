def fizz_buzz(n)
  if n % 15 == 0
    "Fizz Buzz"
  elsif n % 5 == 0
    "Buzz"
  elsif n % 3 ==0
    "Fizz"
  else
    n.to_s
  end
end





# puts fizz_buzz(1)
# puts fizz_buzz(2)
# puts fizz_buzz(3)
# puts fizz_buzz(4)
# puts fizz_buzz(5)
# puts fizz_buzz(6)
# puts fizz_buzz(15)

# a = <<TEXT
# これはテキストです。
# インデントがつくテキストです。
# TEXT
# puts a


# def method
#   <<-TEXT
#   これはインデントのつくテキスト。
#   それのテストです。
#   TEXT
# end

# puts method

# def method
#   <<~TEXT
#   これはインデントのつくテキスト。
#   それのテストです。
#   TEXT
# end

# puts method

# def greet(country)
#   country or return 'countryを入力してください'

#   if country == "japan"
#     'こんにちは'
#   else
#     'Hello'
#   end
# end

# puts greet('japan')
# puts greet(nil)

# status = "error"
# message =
#   unless status =="ok!"
#     "異常があります"
#   else
#     "異常ありません"
#   end

# puts message
