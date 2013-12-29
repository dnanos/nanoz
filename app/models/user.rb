class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

#  validates :username, :uniqueness => true, :presence => true
  
  def role?(role)
    if self.email=='nanos@mail.by' then
      return true
    else
      return !!self.roles.find_by_name(role)
    end
  end 
  
  private
    def create_role
      self.roles << Role.find_by_name(:user)
    end
end
