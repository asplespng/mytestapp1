class User < ActiveRecord::Base
  enum role: [:user, :administrator]
  validates :email, :first_name, :last_name, :role, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
