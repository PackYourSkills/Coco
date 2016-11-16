class NestsController < ApplicationController

skip_before_action :authenticate_user!, only: [:index]

# before_action :set_user, only: [:new,:create, :show, :edit]
before_action :set_nest, only: [:edit, :update, :show, :destroy]
before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    fail
    @nest = Nest.all
  end

  def new
    @nest = Nest.new
    @user = User.find(params['format'])
  end

  def show_from_user_id
    @nest = Nest.find_by_user_id(@user)
  end

  def show
  end

  def create
    @nest = Nest.new(nest_params)
    if @nest.save
      redirect_to nest_path @nest
    else
      render :new
    end
  end

  def edit
  end

  def update
    @nest.update(nest_params)
    redirect_to nest_path @nest
  end

  def destroy
    @nest.destroy
    redirect_to user_path @user
  end

  private

  def set_nest
    @nest = Nest.find(params['id'])
  end

  def set_user
    @user = User.find(@nest.user_id)
  end

  def nest_params
    params.require(:nest).permit(:user_id, :address, :city, :zipcode, :description,
      :max_capacity, :price, :opening_hour, :closing_hour, :wifi,
      :printer, :phoning_room, :coffee, :tea, :microwave, :other_equipment,
      :photo, :photo_cache)
  end
end


