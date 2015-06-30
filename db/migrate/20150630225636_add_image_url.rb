class AddImageUrl < ActiveRecord::Migration
  def change
    add_column :health_categories, :image_url, :string
  end
end
