class AddforeignKeyTojob < ActiveRecord::Migration[6.1]
  def change
    add_reference :jobs, :companie, foreign_key: true
  end
end
