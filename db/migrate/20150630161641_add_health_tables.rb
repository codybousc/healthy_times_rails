class AddHealthTables < ActiveRecord::Migration
  def change
    create_table :health_categories do |t|
      t.column :category, :string
    end

    create_table :individual_sections do |t|
      t.column :title, :string
      t.column :content, :string
      t.column :media, :string
      t.column :media_description, :string
    end
  end
end
