class Group < ActiveRecord::Base
  has_many :users
  belongs_to :organization
  
  def self.organization_groups(id)
    self.where(:organization_id => id)
  end
end
