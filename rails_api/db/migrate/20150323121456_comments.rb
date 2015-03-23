class Comments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user_id, index: true
      t.references :link_id, index: true

      t.timestamps
    end
  end
end
