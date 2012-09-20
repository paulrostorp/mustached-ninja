class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:devise

  # Setup accessible (or protected) attributes for your model
attr_accessible  :email,:name, :token, :password, :password_confirmation, :remember_me
  attr_accessible :provider, :uid
  has_many :tips
  has_many :client_applications
  has_many :tokens, :class_name => "OauthToken", :order => "authorized_at desc", :include => [:client_application]
  validates_presence_of :name
validates_uniqueness_of :name, :email, :case_sensitive => false
end
