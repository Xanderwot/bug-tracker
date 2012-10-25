class AddFieldsToTts < ActiveRecord::Migration
  def change
  	add_column :tts, :closed_at, :date
  	add_column :tts, :closed_by, :integer
  end
end
