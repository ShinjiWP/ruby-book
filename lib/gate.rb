class Gate
	STASIONS = %i[umeda juso mikuni]
	FARES = [160, 190]

	def initialize(name)
		@name = name
	end

	def enter(ticket)
		ticket.stamp(@name)
	end

	def exit(ticket)
    fare = cals_fare(ticket)
    fare <= ticket.fare
	end

	def cals_fare(ticket)
		from = STASIONS.index(ticket.stamped_at)
		to = STASIONS.index(@name)
		distance = to - from
		FARES[distance - 1]
	end
end
