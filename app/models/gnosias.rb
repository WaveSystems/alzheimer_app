class Gnosias < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "210x141>"}
end
