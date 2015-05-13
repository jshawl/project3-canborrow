class Garment < ActiveRecord::Base
  belongs_to :closet
  belongs_to :profile
  has_many :borrows
  has_many :profiles, :through => :borrows
end
