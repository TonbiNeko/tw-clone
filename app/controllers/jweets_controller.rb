class JweetsController < ApplicationController
  def index
  end
  def new
    @jweet = Jweet.new
  end
  def create
    Jweet.create(jweet_params)
    redirect_to new_jweet_path
  end
  private
  def jweet_params
    params.require(:jweet).permit(:content)
  end
end
