class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'タスクを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'タスクの登録に失敗しました。'
      render :new
    end
  end

  def destroy
  end
end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end