class IndividualSectionsController < ApplicationController

  def new
    @health_category = HealthCategory.find(params[:health_category_id])
    @individual_section = @health_category.individual_sections.new
  end

  def show
    @health_category = HealthCategory.find(params[:health_category_id])
    @individual_section = IndividualSection.find(params[:id])
  end

  def create
    @health_category = HealthCategory.find(params[:health_category_id])
    @individual_section = @health_category.individual_sections.new(individual_section_params)
    if @individual_section.save
      flash[:notice] = "Section successfully added"
      redirect_to health_category_path(@health_category.id)
    else
      render :new
    end
  end

  def edit
    @health_category = HealthCategory.find(params[:health_category_id])
    @individual_section = IndividualSection.find(params[:id])
  end

  def update
    @health_category = HealthCategory.find(params[:health_category_id])
    @individual_section = IndividualSection.find(params[:id])
    if @individual_section.update(individual_section_params)
      redirect_to health_category_path(@health_category.id)
    else
      render :edit
    end
  end

  def destroy
    @health_category = HealthCategory.find(params[:health_category_id])
    @individual_section = IndividualSection.find(params[:id])
    @individual_section.destroy
    redirect_to health_category_path(@health_category.id)
  end

  private
  def individual_section_params
    params.require(:individual_section).permit(:title, :content, :media, :media_description)
  end


end
