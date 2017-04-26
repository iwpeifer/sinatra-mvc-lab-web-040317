require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :user_input
	end

	post '/' do
		@user_phrase = PigLatinizer.new.to_pig_latin(params[:user_phrase])
		erb :latinized
	end

	post '/piglatinize' do
		@user_phrase = PigLatinizer.new.to_pig_latin(params[:user_phrase])
		erb :latinized
	end

end