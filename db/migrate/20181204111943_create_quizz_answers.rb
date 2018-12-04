class CreateQuizzAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :quizz_answers do |t|
      t.boolean :correct_answer_1
      t.boolean :correct_answer_2
      t.boolean :correct_answer_3
      t.boolean :correct_answer_4
      t.boolean :correct_answer_5
      t.references :user, foreign_key: true
      t.references :specie, foreign_key: true

      t.timestamps
    end
  end
end
