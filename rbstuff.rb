
def tea_maker(names)
	names = names.shuffle
	names
end
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
answer
end
def strangy(goiys)
	var = []
	goiys.each do |a|
		if a.length == 3
			var << "#{a[0]} #{a[1]} #{a[2]}"
		else
			var	<< "#{a[0]} #{a[1]}"
		end
	end	
var
end

def smoosher(arr)
	str = ""
	arr.each do |v|
		if v.length == 3
			x = "#{v[0]}, #{v[1]}, and #{v[2]}" + "<br>"
		else
		 	x = "#{v[0]} and #{v[1]}" + "<br>"
		end
		str << x
	end
	str
end

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
