class ChangeNewsInfoToText < ActiveRecord::Migration
  def change
  	change_column :news, :info, :text
  end
end
