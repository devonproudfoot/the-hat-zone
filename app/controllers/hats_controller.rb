class HatsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @hats = Hat.all
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

end
