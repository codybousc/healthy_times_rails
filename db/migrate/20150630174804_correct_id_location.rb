class CorrectIdLocation < ActiveRecord::Migration
  def change
    add_column :individual_sections, :health_category_id, :integer
    remove_column :health_categories, :health_category_id
  end


end
