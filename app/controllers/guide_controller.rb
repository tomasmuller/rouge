class GuideController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @comment = Comment.new
  end

  def comment_on_restaurant
    @restaurant = Restaurant.find(params[:id])
    @restaurant.comments.create params[:comment]
    @comment = Comment.new
    flash[:notice] = "Comment created at #{Time.now}"
    render :action => 'show'
  end
end
