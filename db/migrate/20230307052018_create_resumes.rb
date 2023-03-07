class CreateResumes < ActiveRecord::Migration[6.1]
  def change
    create_table :resumes do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.integer :phone
      t.string :address
      t.string :email
      t.date :date_of_birth
      t.string :ed_type, null: false
      t.integer :year_of_passout, null: false
      t.float :per_cgpa
      t.string :skills
      t.references :user, foreign_key: true,null: false
      t.timestamps
    end
  end
end
