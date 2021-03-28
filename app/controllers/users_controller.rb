class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to login_url
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end
  
  def new
    @user = User.new
  end

end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end