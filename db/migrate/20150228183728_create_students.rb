class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    		t.string :first_name
    		t.string :last_name
    		t.string :email
    		t.integer :project_id
    end
  end
end
