class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.datetime :due_at
      t.string :action

      t.timestamps
    end
  end
end
