class HatsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :is_admin?, only: [:new, :create]

  def index
    if params[:term]
      @hats = Hat.search_by_descriptions(params[:term]).order(params[:sort])
    else
      @hats = Hat.order(params[:sort])
    end
  end

  def show
    @hat = Hat.find(params[:id])
    @comment = Comment.new
  end
  
  def new
    @hat = Hat.new
  end

  def create
    @hat = current_user.hats.create(hat_params)
    if @hat.valid?
      redirect_to hat_path(@hat)
    else
      return render :new, status: :unprocessable_entity
    end
  end

  private

  def hat_params
    params.require(:hat).permit(:name, :brand, :color, :style, :team)
  end

  def is_admin?
    unless current_user.admin?
      redirect_to root_path
      flash[:alert] = "You need to be an admin to add hats!"
    end
  end

end
