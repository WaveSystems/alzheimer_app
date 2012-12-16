class Gnosia < ActiveRecord::Base
  acts_as_api
  has_attached_file :image, :styles => { :medium => "210x141>"}

  serialize :answer, Array
  serialize :wrong_answer, Array
  attr_accessor :answer_raw

  api_accessible :gnosias do |t|
    t.add :id
    t.add :name
    t.add :question
    t.add :answer
    t.add :wrong_answer
    t.add :image_path
  end
  
  def answer_raw
    self.answer.join(',') unless self.answer.nil?
  end

  def answer_raw=(value)
    self.answer = []
    self.answer = value.split(',')
  end

  def wrong_answer_raw
    self.wrong_answer.join(',') unless self.answer.nil?
  end

  def wrong_answer_raw=(value)
    self.wrong_answer = []
    self.wrong_answer = value.split(',')
  end

  def image_path
    image.url(:medium)
  end
end
