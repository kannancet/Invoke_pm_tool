class User < ActiveRecord::Base
  rolify 
  before_save :setup_role
    # :before_add => :before_add_method
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_confirmation_of :password, :if => :password_required?
  # def role?(role)
  #     return !!self.roles.find_by_name(role.to_s.camelize)
  # end

  # Default role is "Registered"
  def setup_role 
    if self.role_ids.empty? 
      self.add_role(:user) 
    end
  end

end
