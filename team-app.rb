require "sinatra"
require_relative "rbstuff.rb"
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
	redirect '/nput'
end
get '/nput' do
	erb :inputs, locals:{first:session[:first],
		last:session[:last]}
end
post '/nput' do
  names = params.values
	pears = tea_maker(names)
  session[:c] = smoosh(pears)
	redirect '/chiggy'
end	
 get '/chiggy' do
 	v = strangy(session[:c])
 	erb :check, locals:{v:v}
end
post '/p_check' do
	v = params[:v]
	drop = params[:drop]
	smoosh = smoosh(drop)
	redirect '/zit?smoosh='+smoosh
end
get '/zit' do
	smoosh = params[:smoosh]
	erb :results, locals:{first:session[:first],
		last:session[:last],smoosh:smoosh}
end	