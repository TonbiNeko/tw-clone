class JweetsController < ApplicationController
  def index
  end
  def new
    @jweet = Jweet.new
  end
end
