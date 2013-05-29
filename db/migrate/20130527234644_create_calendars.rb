class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
    	t.text :title, null:false
    	t.text :subtitle
    	t.datetime :fecha
    	t.text :info
    	t.text :estado
      t.timestamps
    end
  end
end
