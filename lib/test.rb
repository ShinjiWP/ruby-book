# Userクラスを定義する
class User
	attr_reader :first_name, :last_name, :age

	def initialize(first_name, last_name, age)
		@first_name = first_name
		@last_name = last_name
		@age = age
	end

	def full_name(user)
		# "#{user[:first_name]} #{user[:last_name]}"
		"#{user.first_name} #{user.last_name}"
	end
end

# ユーザーデータ
users = []
# users << { first_name: 'shinji', last_name: 'python', age: 32}
# users << { first_name: 'chika', last_name: 'ruby', age: 29}
users << User.new('shinji', 'python', 32)
users << User.new('chika', 'ruby', 29)

# 氏名用メソッド　⇒　クラス内部へ移動。引数が省略出来る。
# def full_name(user)
#   # "#{user[:first_name]} #{user[:last_name]}"
#   "#{user.first_name} #{user.last_name}"
# end

# ユーザーデータの表示
users.each { |user| puts "氏名：#{full_name(user)}、年齢：#{user.age}" }
