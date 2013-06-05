class ChangeNewsSubtitleText < ActiveRecord::Migration
	def change
		change_column :news, :subtitle, :text
	end
end
