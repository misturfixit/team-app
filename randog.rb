
def tea_maker(names)
	names = names.shuffle
	names
end
def res(names)
	answer =[]
	pair =[]
	while names.length >= 2	
		last = names.last
		names.delete(last)

		next1 = names.last
		names.delete(next1)
	
		team = [last, next1]
		answer << team
			if names.length == 1
				oddguy = names.last
				answer[0] << oddguy
			end	
		end	
answer
end
# results(tea_maker(names))