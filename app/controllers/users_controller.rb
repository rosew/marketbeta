class UsersController < Clearance::UsersController
  private

  def user_params
    params[:user].permit(:email, :password, :terms, :username)
  end
end
