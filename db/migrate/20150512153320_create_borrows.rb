class CreateBorrows < ActiveRecord::Migration
  def change
    create_table :borrows do |t|
    	t.integer :user_id1
    	t.integer :user_id2
    end
  end
end
