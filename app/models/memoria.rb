class Memoria < ActiveRecord::Base
  acts_as_api
  has_attached_file :image, :styles => { :small => "210x141>", :medium => "700x500>"}
  serialize :wrong_answer, Array
  attr_accessor :wrong_answer_raw

  api_accessible :memory do |t|
    t.add :id
    t.add :name
    t.add :answer
    t.add :wrong_answer
    t.add :image_path
  end

  def image_path
    image.url(:medium)
  end

  def wrong_answer_raw
    self.wrong_answer.join(',') unless self.wrong_answer.nil?
  end

  def wrong_answer_raw=(value)
    self.wrong_answer = []
    self.wrong_answer.value.split(',')
  end
end
