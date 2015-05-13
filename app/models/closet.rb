class Closet < ActiveRecord::Base
  belongs_to :profile
  has_many :garments
end
