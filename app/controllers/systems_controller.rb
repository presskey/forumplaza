class SystemsController < ApplicationController
  def industrial
    @companies = []
    @collection = {}
    System.industrial.roots.includes(:company).each do |s|
      @companies << s.company
      @collection[s.company_id] ||= []
      @collection[s.company_id] << s
    end
    @companies.sort_by!(&:position).reverse!.uniq!
  end

  def home
    @companies = []
    @collection = {}
    System.home.roots.includes(:company).each do |s|
      @companies << s.company
      @collection[s.company_id] ||= []
      @collection[s.company_id] << s
    end
    @companies.sort_by!(&:position).reverse!.uniq!
  end

  def show
    @system = System.find(params[:id])
  end
end
