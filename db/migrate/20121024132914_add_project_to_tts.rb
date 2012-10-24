class AddProjectToTts < ActiveRecord::Migration
  def change
  	add_column :tts, :project_id, :integer
  end
end
