class MainController < ApplicationController
  before_filter :show_banner, only: [:index, :about]
end
