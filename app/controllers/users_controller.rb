class UsersController < ApplicationController

  def index
    @users = User.all  #excludes(:id => current_user.id)
  end


  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:role_ids])
      redirect_to @user, notice: "Настройки успешно обновлены."
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_path, notice: "Пользователь успешно удалён."
    end
  end
end