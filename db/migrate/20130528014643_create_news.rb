class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
    	t.string :title, null:false
    	t.string :subtitle
    	t.datetime :date
    	t.string :info
    	t.string :estado
    	t.string :videos
      t.timestamps
    end
  end
end
