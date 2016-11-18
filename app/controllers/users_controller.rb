class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @age = age(@user.birthdate) unless @user.birthdate.nil?
  end



  def edit # GET /users/:id/edit
  end

  def update # PATCH /users/:id
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private


def age(dob)
  now = Time.now.utc.to_date
  now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end
  def user_params
    params.require(:user).permit(:first_name, :last_name, :job,
      :phone, :skype, :sexe, :birthdate, :story,
      :address, :city, :zip_code, :country,
      :quote, :dream_coworker, :song,
      :cv, :website, :host, :photo, :photo_cache)
  end
end


