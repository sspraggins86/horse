class RidersController < ApplicationController
  def index
    @rider = Rider.all
  end

  def new
    @rider = Rider.new
  end

  def edit
    @rider = Rider.find(params[:id])
  end

  def show
    @rider = Rider.find(params[:id])
  end

  def create
    @rider = Rider.create(params.require(:rider).permit(:name, :age, :experience))
  end

  def update
  end

  def destroy
  end
end
