def smoosher(arr)
	str = ""
	arr.each do |v|
		if value.length == 3
			x = "#{v[0]}, #{v[1]}, and #{v[2]}" + "<br>"
		else
		 	x = "#{v[0]} and #{v[1]}" + "<br>"
		end
		str << x
	end
	str
end