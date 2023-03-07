class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :count_emp
      t.date :date_of_estd


      t.timestamps
    end
  end
end
