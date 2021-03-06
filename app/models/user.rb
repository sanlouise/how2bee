class User < ActiveRecord::Base
  
  has_many :articles

  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true
  validates_format_of :email, :with => /\A(\S+)@(.+)\.(\S+)\z/
  validates :boolean_field_name, inclusion: { in: [true, false] }
  has_secure_password
  
end