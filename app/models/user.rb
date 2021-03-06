class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many  :posts
	validates :first_name, presence: true, uniqueness: true, length: { in: 2..20 }
end
