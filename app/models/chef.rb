class Chef < ActiveRecord::Base
has_many :recipes

#Before save callback First emails is saved in memory and then its downcase saved in database
  before_save{self.email = email.downcase}
  
  
  
  validates :chefname, presence: true
  validates :email, presence: true
  
 # validates :chefname, presence: true#, length: {minimum: 3, maximum: 40}
#email :chefname, presence: true
# Email Validation , presence: true
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, presence: true, length: {maximum: 105},
   #                                 uniqueness:{case_sensitive: false},
    #                                format: {with: VALID_EMAIL_REGEX}
  
  
end