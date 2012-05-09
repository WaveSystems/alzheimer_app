class Gnosia < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "210x141>"}

  serialize :answer, Array
  attr_accessor :answer_raw
  
  def answer_raw
    self.answer unless self.answer.nil?
  end

  def answer_raw=(value)
    self.answer = []
    self.answer = value.split(',')
  end
end
