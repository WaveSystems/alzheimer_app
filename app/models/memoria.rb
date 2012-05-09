class Memoria < ActiveRecord::Base
  has_attached_file :image, :styles => { :small => "210x141>", :medium => "700x500>"}
  serialize :answer, Array
  attr_accessor :answer_raw
  
  def answer_raw
    self.answer.join('\n') unless self.answer.nil?
  end

  def answer_raw=(value)
    self.answer = []
    self.answer = value.split(',')
  end
end
