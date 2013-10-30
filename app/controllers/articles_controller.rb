class ArticlesController < ApplicationController
  def index
    @collection = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end
end
