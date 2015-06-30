class HealthCategoriesController < ApplicationController
  def index
    @health_categories = HealthCategory.all
  end

  def show
    @health_category = HealthCategory.find(params[:id])
  end


  def new
    @health_category = HealthCategory.new
  end

  def create
    @health_category = HealthCategory.new(health_category_params)
    if @health_category.save
      flash[:notice] = "You've added a new category to Inner Health!"
      redirect_to health_categories_path
    else
      render :new
    end
  end

  def edit
    @health_category = HealthCategory.find(params[:id])
  end

  def update
    @health_category = HealthCategory.find(params[:id])
    if @health_category.update(health_category_params)
      redirect_to health_categories_path
    else
      render :edit
    end
  end

  private
  def health_category_params
    params.require(:health_category).permit(:category, :image_url)
  end
end
