
class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.string :name
    	t.string :gender
    	t.string :top_size
    	t.string :bottom_size
    	t.string :location

      t.timestamps null: false
      t.string :name
    end
  end
end
