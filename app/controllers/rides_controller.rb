class RidesController < ApplicationController

  def index
    @rides = Ride.all
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    if @ride.save 
      flash.keep.notice = 'Ride created successfully'
      redirect_to root_path 
    else
      render :new
    end
  end

  def show
    @ride = Ride.find(params[:id])
  end
  
  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy
    flash.keep.notice = "#{ @ride.title } deleted successfully"
    redirect_to root_path
  end

  private
  def ride_params
    params.require(:ride).permit(:title, :user_id, :date)
  end

end
