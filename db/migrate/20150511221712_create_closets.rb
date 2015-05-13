class CreateClosets < ActiveRecord::Migration
  def change
    create_table :closets do |t|
      t.belongs_to :profile, index: true, foreign_key: true

      t.timestamps null: false
      t.string :name
    end
  end
end
