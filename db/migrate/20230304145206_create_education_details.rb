class CreateEducationDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :education_details do |t|
      t.string :ed_type, null: false
      t.integer :year_of_passout, null: false
      t.float :per_cgpa
      t.timestamps
    end
  end
end
