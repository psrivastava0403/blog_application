class Users::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!

  def edit_profile
    @user = current_user
  end

  def update_profile
    @user = current_user
    if @user.update_with_password(account_update_params)
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Profile updated successfully." }
        format.turbo_stream { redirect_to root_path, notice: "Profile updated successfully." }
      end
    else
      respond_to do |format|
        format.html { render :edit_profile, status: :unprocessable_entity }
        format.turbo_stream { render :edit_profile, status: :unprocessable_entity }
      end
    end
  end


  def edit_password
    @user = current_user
  end

  def update_password
    @user = current_user
    if @user.update_with_password(password_update_params)
      bypass_sign_in(@user)
      redirect_to root_path, notice: "Password updated successfully."
    else
      render :edit_password
    end
  end

  private

  def account_update_params
    params.require(:user).permit(:name, :age, :email, :mobile_no, :address, :current_password)
  end

  def password_update_params
    params.require(:user).permit(:password, :password_confirmation, :current_password)
  end
end
