# frozen_string_literal: true

class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :message
      t.integer :reserva_id
      t.timestamps
    end
  end
end
