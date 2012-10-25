class AddAttachentToTts < ActiveRecord::Migration
  def change
  	add_attachment :tts, :image
  end
end
