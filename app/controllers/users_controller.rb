class UsersController < ApplicationController

  def show # GET /users/:id
  end

  def edit # GET /users/:id/edit
  end

  def update # PATCH /users/:id
    current_user.update(user_params)
    redirect_to user_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :job, :phone, :skype, :sexe, :quote, :dream_coworker, :song, :cv, :birthdate, :story, :host, :address, :city, :zipcode, :country)
  end
end


