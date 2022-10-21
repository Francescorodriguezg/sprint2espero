# frozen_string_literal: true

class CreatePivots < ActiveRecord::Migration[6.1]
  def change
    create_table :pivots do |t|
      t.integer :user_id
      t.string :club_name
      t.string :sport_name
      t.datetime :date_time
      t.integer :moderador_id
      t.string :club_address
      t.string :status, default: 'pending'
      t.timestamps
    end
  end
end
