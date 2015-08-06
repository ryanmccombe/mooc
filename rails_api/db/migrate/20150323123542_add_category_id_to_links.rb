class AddCategoryIdToLinks < ActiveRecord::Migration
  def change
    add_reference :links, :category, index: true
  end
end
