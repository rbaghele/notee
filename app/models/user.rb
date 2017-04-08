class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable #:omniauthable

  has_many :articles
  
  def full_name
  	full_name = fname.to_s + lname.to_s
  	if full_name.blank?
  		full_name = email.split('@').first
  	end

  	full_name.titleize
  end
end
