class CreateTakeQuizzes < ActiveRecord::Migration
  def change
    create_table :take_quizzes do |t|
      t.string :ques
      t.string :ch1
      t.string :ch2
      t.string :ch3
      t.string :ch4
      t.string :ans

      t.timestamps
    end
  end
end
