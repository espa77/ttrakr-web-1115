class ShirtsController < ApplicationController
  skip_before_action :authenticate!
  def index
    @shirts = Shirt.all
  end

  def show
    @shirt = Shirt.find(params[:id])
  end
end
