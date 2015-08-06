class AddCategoryIdToLinks < ActiveRecord::Migration
  def change
    add_reference :links, :category_id
  end
end
