class JweetsController < ApplicationController
  before_action :set_jweet, only: [:show, :edit, :update, :destroy]
  def index
    @jweets = Jweet.all
  end
  def new
    @jweet = Jweet.new
  end
  def create
    Jweet.create(jweet_params)
    redirect_to new_jweet_path
  end
  def show
  end
  def edit
  end
  def update
    if @jweet.update(jweet_params)
      redirect_to jweet_path, notice: "edited your post"
    else
      render :edit
    end
  end
  def destroy
    @jweet.destroy
    redirect_to jweets_path, notice:"Deleted your post"
  end
  private
  def jweet_params
    params.require(:jweet).permit(:content)
  end
  def set_jweet
    @jweet = Jweet.find(params[:id])
  end
end
