class AddPriorityToTts < ActiveRecord::Migration
  def change
  	add_column :tts, :priority, :string
  end
end
