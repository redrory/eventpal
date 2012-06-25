class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  def password_required?
  	super if confirmed?
  end

  def password_match?
  	self.errors[:password] << "can't be blank" if password.blank?
  	self.errors[:password_confirmation] << "can't be blank" if password_confirmation.blank?
  	self.errors[:password_confirmation] << "does not match password" if password != password_confirmation
  	password == password_confirmation && !password.blank?
  end

end
