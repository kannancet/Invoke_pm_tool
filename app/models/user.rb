class User < ActiveRecord::Base
  include Authority::UserAbilities
  include Authentication 
end
