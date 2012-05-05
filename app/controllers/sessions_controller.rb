class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email of password"
      render "new"
    end
  end

  def create_with_omniauth
    raise request.env["omniauth.auth"].to_yaml
    

=begin
    auth = request.env["omniauth.auth"]
    user = User.find_by_email(auth['info']['email']) || User.create_with_omniauth(auth)

    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
=end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged Out!"
  end
end
