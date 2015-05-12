class CreateGarments < ActiveRecord::Migration
  def change
    create_table :garments do |t|
      t.belongs_to :closet, index: true, foreign_key: true
      t.string :garment_url
      t.string :garment_type
      t.string :size
      t.string :gender
      t.string :background_url
      t.timestamps null: false
      t.string :name
    end
  end
end
