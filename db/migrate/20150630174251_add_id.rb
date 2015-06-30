class AddId < ActiveRecord::Migration
  def change
    add_column :health_categories, :health_category_id, :integer
  end
end
