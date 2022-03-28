class User
	attr_reader :name

	def initialize(name, weight)
		@name = name
		@weight = weight
	end

	def heavier_than?(other_user)
		other_user.weight < @weight
	end

	protected

	def weight
		@weight
	end
end

shinji = User.new('shinji', 68)
chika = User.new('chika', 48)

chika.heavier_than?(shinji)
