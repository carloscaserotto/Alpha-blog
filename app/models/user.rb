class User < ApplicationRecord
    validates :username, presence: true, uniqueness: {case_sensitive: false}#, length: {minimun: 3}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,uniqueness: {case_sensitive: false}, 
                format: { with: VALID_EMAIL_REGEX} #, length: { maximun: 105}
end
