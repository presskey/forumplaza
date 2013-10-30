class ReferencesController < ApplicationController

  def index
    @collection = Reference.all
  end

  def show
    @reference = Reference.find(params[:id])
  end
end
