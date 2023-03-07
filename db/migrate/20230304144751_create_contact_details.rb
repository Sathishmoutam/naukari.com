class CreateContactDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_details do |t|
      t.integer :phone
      t.string :address
      t.string :email
      t.date :date_of_birth

      t.timestamps
    end
  end
end
