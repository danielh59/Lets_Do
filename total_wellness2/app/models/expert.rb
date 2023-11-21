class Expert < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_secure_password
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
        
         has_many :consultations
         has_many :doers, through: :consultations
         has_many :regimens
end
