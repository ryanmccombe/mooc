class AddCategoryIdToLinks < ActiveRecord::Migration
  def change
    add_column :links, :category_id, :reference
  end
end
