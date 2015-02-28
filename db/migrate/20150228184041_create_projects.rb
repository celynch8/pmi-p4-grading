class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name

    	t.text :objective1
    	t.text :objective1_goal1
    	t.text :objective1_goal2
     	t.text :objective1_goal3
      t.text :objective1_goal4
      t.integer :objective1_score
      t.text :objective1_feedback
      
      t.text :objective2
    	t.text :objective2_goal1
    	t.text :objective2_goal2
     	t.text :objective2_goal3
      t.text :objective2_goal4
      t.integer :objective2_score
      t.text :objective2_feedback
      
      t.text :objective3
    	t.text :objective3_goal1
    	t.text :objective3_goal2
     	t.text :objective3_goal3
      t.text :objective3_goal4
      t.integer :objective3_score
      t.text :objective3_feedback

      t.integer :presentation_score
      t.text :presentation_feedback

      t.integer :teamwork_score
      t.text :teamwork_feedback

      t.integer :overall_score
      t.text :overall_feedback

      t.integer :student_1_id
      t.integer :student_2_id

    end
  end
end
