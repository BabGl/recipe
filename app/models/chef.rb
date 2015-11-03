class Chef < ActiveRecord::Base
has_many :recipes

#Before save callback First emails is saved in memory and then its downcase saved in database
  before_save{self.email = email.downcase}
  
  validates :chefname, presence: true, length: {minimum: 3, maximum: 40}
 #Email Validation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 105},
                                    uniqueness:{case_sensitive: false},
                                    format: {with: VALID_EMAIL_REGEX}
  
  
end