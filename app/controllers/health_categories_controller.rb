class HealthCategoriesController < ApplicationController
  def index
    @health_categories = HealthCategory.all
  end

  def show
    @health_category = HealthCategory.find(params[:id])
  end
end
