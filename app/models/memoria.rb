class Memoria < ActiveRecord::Base
  has_attached_file :image, :styles => { :small => "210x141>", :medium => "700x500>"}
end
