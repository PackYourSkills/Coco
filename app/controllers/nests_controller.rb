class NestsController < ApplicationController

before_action :set_user, only: [:new,:create, :show, :edit, :update]
before_action :set_nest, only: [:edit, :update]
  def new # GET /nests/new
    @nest = Nest.new
  end

  def show
    @nest = @user.nest
  end

  def create # POST /nests
    @nest = @user.build_nest(nest_params)
    if @nest.save
      redirect_to user_nest_path @user, @nest
    else
      render :new
    end
  end

  def edit # GET /nests/:id/edit
  end

  def update # PATCH /nests/:id
    @nest.update(user_params)
    redirect_to user_nest_path @user, @nest
  end

  def destroy # DELETE /nests/:id
    @nest = Nest.find(params['id'])
    @user = User.find(@nest.user_id)
    @nest.destroy
    redirect_to users_path(@user.id)
  end

  private

  def set_nest
    @nest = Nest.find(params['id'])
  end

  def find_nest_by_user_id
    @nest = Nest.find(params['id'])
  end

  def set_user
    @user = User.find(params['user_id'])
  end

  def nest_params
    params.require(:nest).permit(:address, :city)
  end
end
