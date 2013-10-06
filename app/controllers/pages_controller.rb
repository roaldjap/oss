class PagesController < ApplicationController
	skip_before_filter :authorize
def about
	
end

def contact
	
end

def new_user
	redirect_to users_url
	end


end