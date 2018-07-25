class AddIndexAll < ActiveRecord::Migration[5.2]
  def change
    add_reference :pins, :users, foreign_key: true
    add_reference :comments, :pins, foreign_key: true
    add_reference :comments, :users, foreign_key: true
  end
end
