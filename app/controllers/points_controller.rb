class PointsController < ApplicationController
  
  
  def index
    @points = Point.all.order(created_at: :desc)
  end

  def new
    @new_point = Point.new
  end
  
  def create
    @new_point = Point.new(new_point_params)
    if @new_point.save
      flash[:alert] = "Your point has been made."
      redirect_to points_url
    else
      flash[:warning] = "Sorry, there was an issue with your point"
      render 'new'
    end
  end
  
  def show 
    @point = Point.find params[:id]
  end
  
  
  protected
  
    def new_point_params
      params.require(:point).permit(:title, :topic, :body)
    end
  
end
