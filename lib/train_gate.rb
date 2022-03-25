# Userクラスを定義する
class User
  attr_reader :first_name, :last_name, :age

  def


# ユーザーデータ
users = []
users << { first_name: 'shinji', last_name: 'python', age: 32}
users << { first_name: 'chika', last_name: 'ruby', age: 29}

# 氏名用メソッド
def full_name(user)
  "#{user[:first_name]} #{user[:last_name]}"
end

# ユーザーデータの表示
users.each do |user|
  puts "氏名：#{full_name(user)}、年齢：#{user[:age]}"
end
