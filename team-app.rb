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
	allavum = params.values
	pears = tea_maker(allavum)
	pairs = res(pears)
	smoosh = smoosher(pairs) 
	redirect '/zit?smoosh='+smoosh
end	
get '/zit' do
	smoosh = params[:smoosh]
	erb :results, locals:{first: session[:first], last: session[:last], smoosh: smoosh}
end	