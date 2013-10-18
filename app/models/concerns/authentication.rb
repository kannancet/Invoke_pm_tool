module Authentication    	
	extend ActiveSupport::Concern
  		
	included do
		rolify 
		before_save :setup_role
		devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  		validates_confirmation_of :password, :if => :password_required?
  	end

  	def setup_role 
	    if self.role_ids.empty? 
	      self.add_role(:user) 
	    end
  	end
end