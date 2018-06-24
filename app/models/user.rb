class User < ApplicationRecord

  has_many :tasks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  def username
    return self.email.split('@')[0].capitalize
  end       
 
  mount_uploader :avatar, AvatarUploader

  #validates_processing_of :avatar
  #validate :avatar_size_validation
  #private
  #  def avatar_size_validation
  #    errors[:avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
  #  end

end