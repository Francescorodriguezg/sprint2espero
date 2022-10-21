# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :publication_id
      t.string :review
      t.timestamps
    end
  end
end
