class User < ActiveRecord::Base

	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable
	def login=(login)
      @login = login
    end

    def login
      @login || self.username || self.email
    end

	def self.find_first_by_auth_conditions(warden_conditions)
	  conditions = warden_conditions.dup
	  if login = conditions.delete(:login)
	    where(conditions).where(["username = :value OR email = :value", { :value => login }]).first
	  else
	    where(conditions).first
	  end
	end

    validates :username, presence: true, length: {maximum: 255},
    	uniqueness: { case_sensitive: false }, 
    	format: { with: /\A[a-zA-Z0-9]*\z/,
    		message: "may only contain letters and numbers." }
end