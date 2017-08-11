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
