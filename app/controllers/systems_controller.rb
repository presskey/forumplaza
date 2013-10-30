class SystemsController < ApplicationController
  def industrial
    @collection = System.industrial
  end

  def home
    @collection = System.home 
  end

  def show
    @system = System.find(params[:id])
  end
end
