# frozen_string_literal: true

class CreateResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :responses do |t|
      t.string :message
      t.string :status
      t.integer :user_id
      t.integer :user_moderator
      t.timestamps
    end
  end
end
