
class Profile < ActiveRecord::Base
  has_one  :closet
  has_many :garments
  belongs_to :user
  has_many :borrows
  has_many :garments, :through => :borrows
end
