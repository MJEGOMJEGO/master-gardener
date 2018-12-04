class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :name
      t.integer :max_life_points
      t.string :img_url_water
      t.string :img_url_feed
      t.string :img_url_exposure
      t.string :img_url_repot
      t.string :img_url_cutclean
      t.string :img_url_feeling_good
      t.string :img_url_feeling_bad
      t.string :quizz_question_1
      t.boolean :quizz_answer_1
      t.string :quizz_question_2
      t.boolean :quizz_answer_2
      t.string :quizz_question_3
      t.boolean :quizz_answer_3
      t.string :quizz_question_4
      t.boolean :quizz_answer_4
      t.string :quizz_question_5
      t.boolean :quizz_answer_5

      t.timestamps
    end
  end
end
