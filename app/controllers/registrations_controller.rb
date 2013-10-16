class RegistrationsController < Devise::RegistrationsController
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have signed up successfully. If enabled, a confirmation was sent to your e-mail."
      sign_in :user, @user
      redirect_to root_url
    else
      render :action => :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :salt, :encrypted_password)
  end
end
