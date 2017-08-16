require "sinatra"
require_relative "randog.rb"
require_relative "user.rb"
require_relative "smoosh.rb"
enable :sessions
get '/' do 
	mssg = params[:mssg] || ""	
	erb :logn, locals:{mssg: mssg}	
end
post '/login' do
	uname = params[:uname]
	pword = params[:pword]
	authrz(uname, pword)
end	
get '/names' do
	mssg = params[:mssg]
	erb :name, locals:{mssg: mssg}
end
post '/names' do
	session[:first] = params[:first]
	session[:last] = params[:last]
	redirect '/put?'
end
get '/nput' do
	erb :inputs, locals:{first: session[:first], last: session[:last]}
end
post '/nput' do
	names = params[names]
	session[:c] = tea_maker(names)
	# pears = tea_maker(allavum)
	# pairs = res(pears)
	# smoosh = smoosher(pairs) 
	redirect '/chiggy?names='+names
end	
 get '/chiggy' do
 	 erb :check, locals:{c: session[:c]}
end
post '/p_check' do
 		drop = params[:drop]
		smoosh = smoosh(drop)
		redirect '/results?smoosh=' + smoosh
end
get '/zit' do
	smoosh = params[:smoosh]
	erb :results, locals:{first: session[:first], last: session[:last], smoosh: smoosh}
end	