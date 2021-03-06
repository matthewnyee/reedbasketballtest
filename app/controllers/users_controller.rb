class UsersController < ApplicationController
  protect_from_forgery

  def reset_rsvp
    User.update_all('status' => 'changed')
  end

  def index
    @users = User.all
    next_game
    @next_game_day_name = next_game_day_name
  end

  def new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.save
    redirect_to edit_user_url(@user.id)
  end

  def edit
    @user = User.find(params[:id])
    next_game
    @next_game_day_name = next_game_day_name
  end

  def update
    @user = User.find(params[:id])
    if @user
      if params[:user][:name]
        @user.name = params[:user][:name]
      end
      if params[:user][:status]
        @user.status = params[:user][:status]
      end
      if params[:user][:email_address]
        @user.email_address = params[:user][:email_address]
      end
      @user.save
    end
    redirect_to users_url
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end

  def about
  end


  private

  def next_game
    # if Date.today.wday >= 1 && Date.today.wday <= 3
    #   @next_game = next_wednesday
    # else
      @next_game = next_sunday
    # end
  end

  def next_wednesday
    x = Date.today
    x += 1 until x.wday > 2 && x.wday < 4#for some reason, can't just use equal sign...
    x
  end

  def next_sunday
    x = Date.today
    x += 1 until x.wday <=0 #for some reason, can't just use equal sign
    x
  end

  def today?
    return true if @next_game == Date.today
  end

  def tomorrow?
    return true if @next_game == Date.today + 1
  end

  def next_game_day_name
    if today?
      'today'
    elsif tomorrow?
      'tomorrow'
    else
      "on #{Date::DAYNAMES[@next_game.wday]}"
    end
  end


end
