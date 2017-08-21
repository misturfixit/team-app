def authrz(uname, pword)
users = { Joe:"1234", User:"pwd", Poindexter:"nerdlife", admin:"admin", username:"password"}	
  users.each_pair do |nam, p_w|	
	  if uname == nam.to_s && pword == p_w
			  mssg = "Logging On"
		    redirect '/names?mssg=' + mssg	
 	  elsif uname == nam.to_s
			  mssg = "Wrong Password"
			  redirect '/?mssg=' + mssg
	  elsif pword == p_w
			  mssg = "Wrong Username"
			  redirect '/?mssg=' + mssg
	  end	
  end
  mssg = "Wrong Username and Password"
  redirect '/?mssg=' + mssg  		
end

########################################################
def tea_maker(names)
	names = names.shuffle
	names
end

########################################################
def smoosh(names)
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
p answer
answer
end

print "smoosh([1,2,3,4,5])#{smoosh([1,2,3,4,5])} \n"
########################################################
def strangy(goiys)
	vr = []
	goiys.each do |v|
		if v.length == 3
			y = "#{v[0]}, #{v[1]}, and  #{v[2]}" + "<br>"
		else
			y	= "#{v[0]}, and #{v[1]}" + "<br>"
		end
	vr << y	
	end	
vr
end

print "strangy([[5, 4, 1], [3, 2], [7,9]]) _______ #{strangy([[5, 4, 1], [3, 2], [7,9]])}"
########################################################################################
def smoosher(arr)
	str = ""
	arr.each do |v|
		if v.length == 3
			x = "#{v[0]}, #{v[1]}, and #{v[2]}" + "<br>"
		else
		 	x = "#{v[0]}, and #{v[1]}" + "<br>"
		end
		str << x
	end
	str
end

