class CreateResumes < ActiveRecord::Migration
  def self.up
    create_table :resumes do |t|
      t.string :name
      t.string :job_title
      t.string :skills
      
      t.timestamps
    end
    
    create_table :work_experiences do |t|
      t.references :resume
      t.string :title
      t.date :start_date
      t.date :end_date
      t.text :body
    end

    create_table :education_items do |t|
      t.references :resume
      t.string :title
      t.date :end_date
    end
  end
  
  def self.down
    drop_table :work_experiences
    drop_table :resumes
  end
end
