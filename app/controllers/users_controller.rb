class UsersController < ApplicationController

  before_filter :authenticate_user!, :except => [ :show, :search ]
  before_filter :correct_user?, :except => [:index ]
  before_action { flash.clear }

  include ApplicationHelper

  def index

    @user = User.find(session[:user_id])

    @total = @user.impressionist_count(:filter=>:session_hash)

    @todayTotal = @user.impressionist_count(:start_date=>Date.today, :filter=>:session_hash)

    getpage(params[:page])

    @usersLikes = User.joins(:votes).where('votes.votable_id = ?', session[:user_id]).page(@page)

    @usersLikesTotal = @usersLikes.total_count;

  end

  def show

    @user = User.find_by_username(params[:username])
    @users = User.where.not(username: params[:username]).limit(5).order("RANDOM()")
    @suggestUsers = User.where.not(username: params[:username]).limit(9).order("RANDOM()")

    @total = @user.impressionist_count( :filter=>:session_hash )

    impressionist(@user, 'pageview', :unique => [:session_hash])

    if !current_user.nil?

      if current_user.id == @user.id
        flash[:notice] = "#{@user.first_name} este é você! Você não pode se Cariocar! :)"
      end

      if current_user.voted_for? @user
        flash[:notice] = "Você já Cariocou essa pessoa, se quiser pode Cariocar novamente e a Cariocada anterior será atualizada"
      end

    end



  end

  def vote_like

    @user = User.find(params[:id])
    @user.liked_by  current_user

  end

  def vote_dislike

    @user = User.find(params[:id])
    @user.disliked_by  current_user

  end

  def username

   @user = User.find(session[:user_id])

   if @user.username_manual == 0
     @user.username = ''
     render layout: "null"
   end

  end

  def username_update

    username = params[:username].gsub(/[^0-9A-Za-z]/, '')

    @user = User.find(session[:user_id])

    @text = User.check_username username,session[:user_id]

    if @text[0].nil?

      if @user.update_attributes :username => username, :username_manual => 1
        redirect_to '/user/profile'
      else
        redirect_to root_url, :notice => 'Signed out!'
      end

    else

      redirect_to '/user/username', :notice => 'O nome de usuário "'+username+'" está sendo utilizado'

    end

  end

  def search

    getpage(params[:page])

    @users = User.search params[:q],@page

    @totalUsers = @users.total_count;

  end

end
