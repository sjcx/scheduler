class Tutor < ActiveRecord::Base
  attr_accessor :password
  before_save :encrypt_password

  attr_accessor :password
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def self.authenticate(email, password)
    tutor = find_by_email(email)
    if tutor && tutor.password_hash == BCrypt::Engine.hash_secret(password, tutor.password_salt)
    tutor
    else
      nil
    end
  end

  has_many :appointments
  has_many :students, :through => :appointments
end
