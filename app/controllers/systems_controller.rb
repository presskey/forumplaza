class SystemsController < ApplicationController
  def industrial
    @companies = []
    @collection = {}
    System.industrial.includes(:company).each do |s|
      @companies << s.company
      @collection[s.company_id] ||= []
      @collection[s.company_id] << s
    end
    @companies.uniq!
  end

  def home
    @companies = []
    @collection = {}
    System.home.includes(:company).each do |s|
      @companies << s.company
      @collection[s.company_id] ||= []
      @collection[s.company_id] << s
    end
    @companies.uniq!
  end

  def show
    @system = System.find(params[:id])
  end
end
