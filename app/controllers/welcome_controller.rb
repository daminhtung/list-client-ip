class WelcomeController < ApplicationController
	http_basic_authenticate_with :name => "admin", :password => "^LQZa+SNj8eb%Euc"

	def index
		@client_ips = ClientIp.paginate(page: params[:page], per_page: 50)
	end
end
