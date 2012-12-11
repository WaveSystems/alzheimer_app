class Memoria < ActiveRecord::Base
  acts_as_api
  has_attached_file :image, :styles => { :small => "210x141>", :medium => "700x500>"}
  serialize :answer, Array
  attr_accessor :answer_raw

  api_accessible :memory do |t|
    t.add :id
    t.add :name
    t.add :image_path
  end

  def image_path
    image.url(:medium)
  end
  
  def answer_raw
    self.answer unless self.answer.nil?
  end

  def answer_raw=(value)
    self.answer = []
    self.answer = value.split(',')
  end
end
