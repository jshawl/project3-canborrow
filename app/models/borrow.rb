class Borrow < ActiveRecord::Base
  belongs_to :garment
  belongs_to :profile
end