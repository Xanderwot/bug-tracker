class CreateTts < ActiveRecord::Migration
  def change
    create_table :tts do |t|
    	t.string :company_name
    	t.string :addres
    	t.date :complite_to
    	t.integer :user_id
    	t.string :objective
    	t.text :description

      t.timestamps
    end
  end
end
