class AddforeignKeyTocontactDetails < ActiveRecord::Migration[6.1]
  def change
    add_reference :contact_details, :user, foreign_key: true
  end
end
