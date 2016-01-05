class SessionsController < ApplicationController

  def new
    redirect_to '/auth/facebook'
  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.where(:provider => auth['provider'],
                      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)
    reset_session
    session[:user_id] = user.id

    if user.username_manual == 1
      redirect_to '/user/profile'
    else
      redirect_to '/user/username'
    end
  end

  def destroy
    reset_session
    redirect_to '/page/byebye'
  end

  def failure
    redirect_to root_url, :alert => "Ocorreu um erro na autenticação com o seu Facebook: #{params[:message].humanize}"
  end

end
