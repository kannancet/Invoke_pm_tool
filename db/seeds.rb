puts 'DEFAULT USERS'
# user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
# puts 'user: ' << user.name

user = User.find_or_create_by_email :name =>"ADMIN_NAME", :email => "ADMIN_EMAIL", :password => "ADMIN_PASSWORD", :password_confirmation => "ADMIN_PASSWORD"
puts 'user: ' << user.name

user2 = User.find_or_create_by_email :name => 'Second User', :email => 'user2@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user: ' << user2.name

user2 = User.find_or_create_by_email :name => 'Second User', :email => 'user3@example.com', :password => 'changeme', :password_confirmation => 'changeme'
puts 'user: ' << user2.name