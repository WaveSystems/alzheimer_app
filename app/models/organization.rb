class Organization < ActiveRecord::Base
  has_many :groups
  belongs_to :user

  def self.user_organizations(id)
    self.where(:user_id => id)
  end
end
