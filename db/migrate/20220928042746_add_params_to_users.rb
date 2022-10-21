# frozen_string_literal: true

class AddParamsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :moderator, :boolean, default: false
  end
end
