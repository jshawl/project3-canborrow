class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile

  after_create do
  	# did this so that when you have user, they get new profile page.
  	self.create_profile unless self.profile.present?
  	self.profile.create_closet unless self.profile.closet.present?
  end
end
