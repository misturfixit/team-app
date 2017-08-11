names = %w[Schtewi Biljakk Garrkk Pmizzle Mattt LuUK KeeFr Yusseppi]

def tea_maker(names)
	names_shuffled = names.shuffle

	names_shuffled
end

def results(names_shuffled)
	answer =[]
	pair =[]

	while names_shuffled.length >= 2	
		last = names_shuffled.last
		names_shuffled.delete(last)

		next1 = names_shuffled.last
		names_shuffled.delete(next1)
	
		team = [last, next1]
		answer << team

			if names_shuffled.length == 1
				oddguy = names_shuffled.last
				answer[0] << oddguy
			end	
		end	
answer
end
results(tea_maker(names))