class CreateWord < ActiveRecord::Migration
  def up
  	create_table :words do |t|
  		t.string :english_word
  		t.string :polish_word
  		t.string :explanation
  	end
  end

  def down
  	drop_table :words
  end
end
