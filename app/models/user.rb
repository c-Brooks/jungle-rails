class User < ActiveRecord::Base

  has_secure_password

    # attr_accessor :password
     EMAIL_REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
     validates :first_name, :presence => true, :length => { :in => 3..20 }
     validates :last_name, :presence => true, :length => { :in => 3..20 }
     validates :email, :presence => true #, :uniqueness => true, :format => EMAIL_REGEX
     validates :password, :confirmation => true  # password_confirmation attr
     validates_length_of :password, :in => 6..20, :on => :create

end
