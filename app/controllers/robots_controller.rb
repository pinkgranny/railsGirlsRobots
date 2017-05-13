class RobotsController < ApplicationController
  def index
    @robots = Robot.all
    render 'index'
  end
  def show
    @robot = Robot.find(params[:id])
    render 'show'
  end
  def new
    @robot = Robot.new
    render 'new'
  end
  def edit
    @robot = Robot.find(params[:id])
    render 'edit'
  end
  def create
    @robot = Robot.new(robot_params)
    if @robot.save
      redirect_to @robot, notice: 'Robot was successfully created.'
    else
      render action: 'new'
    end
  end
  def update
    @robot = Robot.find(params[:id])
    if @robot.update(robot_params)
      redirect_to @robot, notice: 'Robot was successfully updated.'
    else
      render action: 'edit'
    end
  end
  def destroy
    @robot = Robot.find(params[:id])
    @robot.destroy
    redirect_to robots_url, notice: 'Robot was successfully destroyed.'
  end
  private
  # Only allow a trusted parameter "white list" through.
  def robot_params
    params.require(:robot).permit(:name, :description, :picture)
  end

end
