# frozen_string_literal: true

class AddMessageForToResponses < ActiveRecord::Migration[6.1]
  def change
    add_column :responses, :message_for, :int
  end
end
