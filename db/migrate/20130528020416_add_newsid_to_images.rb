class AddNewsidToImages < ActiveRecord::Migration
  def change
  	add_column :images, :news_id, :integer
  	add_index :images, :news_id
  end
end
