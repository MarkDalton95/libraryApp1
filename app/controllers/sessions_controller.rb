class SessionsController < ApplicationController
  def new
  end

  def create
	member = Member.find_by_email(params[:email])
	if member && member.authenticate(params[:password])
				session[:member_id] = member.id
				redirect_to member
	else
		flash.now[:error] = "Invalid email/password combination"
		render 'new'                  #show login page again
	end
  end

  def destroy
		if signed_in?
				session[:member_id] = nil
		else
				flash[:notice] = "You need to log in first"
		end
		redirect_to login_path
  end
end
