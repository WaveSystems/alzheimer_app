class Organization < ActiveRecord::Base
  has_many :groups
  belongs_to :user
  
end
