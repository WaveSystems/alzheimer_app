class Question < ActiveRecord::Base
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
