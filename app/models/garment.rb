class Garment < ActiveRecord::Base
  belongs_to :closet
  has_many :users
end
