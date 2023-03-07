class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
       t.string :user_name
       t.string :password_digest
       t.string :first_name
       t.string :middle_name
       t.string :last_name
       t.string :gender
      t.timestamps
    end
  end
end
