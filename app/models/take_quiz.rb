class TakeQuiz < ActiveRecord::Base
  attr_accessible :ans, :ch1, :ch2, :ch3, :ch4, :ques
  self.table_name = "questions"
end
