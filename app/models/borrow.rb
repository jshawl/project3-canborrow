class Borrow < ActiveRecord::Base
  has_many :garments
  has_many :users
end