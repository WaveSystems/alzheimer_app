class Organization < ActiveRecord::Base
  has_many :groups
  belongs_to :application_admin_user

  def self.user_organizations(id)
    self.where(:application_admin_user_id => id)
  end
end
