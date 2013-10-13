class User < ActiveRecord::Base
   attr_accessible :name, :email, :password, :password_confirmation, :login, :crypted_password, :password_salt, :persistence_token, :single_access_token, :perishable_token, :login_count, :failed_login_count, :last_request_at, :current_login_at, :last_login_at, :current_login_ip, :last_login_ip
  acts_as_authentic do |c|
  	c.login_field = 'email'
  end # block optional
end
