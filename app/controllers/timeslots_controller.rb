class TimeslotsController < ApplicationController

  before_action :find_timeslot, only: [ :show, :edit, :update, :destroy]

  def index
    @timeslots = Timeslot.all
  end

  def show
  end

  def new
    @nest = Nest.find(params['nest_id'])
    @timeslot = Timeslot.new
  end

  def create
    @timeslot = @nest.timeslots.build(timeslot_params)
    if @timeslot.save
      redirect_to timeslots_path
    else
      render :new
    end
  end



  def edit
  end

  def update
    @timeslot.update(timeslot_params)
    redirect_to timeslots_path(@timeslot)
  end

  def destroy
    @timeslot.destroy
    redirect_to timeslots_path
  end


private

def timeslot_params
  params.require(:timeslot).permit(:date, :capacity)
end

def find_timeslot
  @timeslot = Timeslot.find(params[:id])
end

end


