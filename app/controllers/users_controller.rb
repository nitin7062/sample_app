class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # flash[:success] = "Welcome to the Sample App!"
      respond_to do |format|
        format.html { redirect_to user_path(@user) }
      end
    else
      render turbo_stream: turbo_stream.replace("test", partial: "shared/error_messages")
    end
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
