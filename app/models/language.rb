class Language < ActiveRecord::Base
  acts_as_api
  has_attached_file :image, :styles => { :small => "210x141>", :medium => "700x500>"}

  api_accessible :language do |t|
    t.add :id
    t.add :name
    t.add :image_path
  end

  def image_path
    image.url(:medium)
  end
end
