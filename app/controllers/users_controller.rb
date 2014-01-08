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
    @user.roles = []
    if !params[:user].nil?
      if !params[:user][:role_ids].nil?
	params[:user][:role_ids].each {|role_id| @user.add_role(Role.find(role_id).name)}  
      end
    end
    redirect_to @user, notice: 'Настройки успешно обновлены.'
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_path, notice: "Пользователь успешно удалён."
    end
  end
  
  
  private  
    def user_params
      params.require(:user).permit(:role_ids)
    end
end