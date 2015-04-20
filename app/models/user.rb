class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name
  has_many :statuses

  def full_name
  	self.first_name + " " + self.last_name
  end
end
class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
 
end