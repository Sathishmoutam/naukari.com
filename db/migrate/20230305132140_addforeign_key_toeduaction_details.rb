class AddforeignKeyToeduactionDetails < ActiveRecord::Migration[6.1]
  def change
    add_reference :education_details, :user, foreign_key: true
  end
end
