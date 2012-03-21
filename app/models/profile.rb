class Profile < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :firstname, :lastname, :birthdate, :street, :neighborhood, :zipcode, :country, :tutor_name, :ocupation, :bio, :city, :number, :state
  
  def self.analyze(response)
  end
end
