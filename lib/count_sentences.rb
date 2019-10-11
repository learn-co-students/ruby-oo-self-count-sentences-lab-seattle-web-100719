require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    counted = self.split(/[.!?]/)
    counted.reject {|sentence| sentence.nil? || sentence == ""}.length
  end
end