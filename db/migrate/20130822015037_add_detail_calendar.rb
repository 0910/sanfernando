class AddDetailCalendar < ActiveRecord::Migration
  def change
  	add_column :calendars, :detail, :text
  end
end
