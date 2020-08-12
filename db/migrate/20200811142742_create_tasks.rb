# frozen_string_literal: true

# Create the Task schema.
class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :discarded_at

      t.timestamps
    end
    add_index :tasks, :discarded_at
  end
end
