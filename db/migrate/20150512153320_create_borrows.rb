class CreateBorrows < ActiveRecord::Migration
  def change
    create_table :borrows do |t|
    	t.belongs_to :profile
    	t.belongs_to :garment
    end
  end
end
