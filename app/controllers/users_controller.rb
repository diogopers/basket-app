class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
  end

  def update
    @user = current_user
    @user.update(user_params)

    redirect_to user_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name,
                                 :street_address, :city)
  end
end
