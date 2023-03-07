class AdduserToskills < ActiveRecord::Migration[6.1]
  def change
    add_reference :skills, :user, null: false, foreign_key: true
  end
end
